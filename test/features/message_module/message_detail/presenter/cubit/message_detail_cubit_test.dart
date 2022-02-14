import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:idt_messager/feature/message_module/domain/message_repository.dart';
import 'package:idt_messager/feature/message_module/inbox/data/models/inbox_message_dto.dart';
import 'package:idt_messager/feature/message_module/message_detail/data/models/message_detail_dto.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/message_detail_data_souce.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/cubit/message_detail_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../inbox/presenter/cubit/inbox_cubit_test.mocks.dart';

@GenerateMocks(<Type>[MessageRepository])
void main() {
  MockMessageRepository repository = MockMessageRepository();
  MessageDetailCubit messageDetailCubitFactory(
          {required String topic, required String id}) =>
      MessageDetailCubit(
          dataSource: MessageDetailDataSourceImp(
            messageRepository: repository,
          ),
          id: id,
          topic: topic);
  StreamController<MessageDetailDto> _fakeSocket = StreamController();

  MessageDetailDto _added = MessageDetailDto(
      id: '0000',
      message: 'test!',
      modifiedAt: DateTime.now().millisecondsSinceEpoch,
      sender: 'You');

  setUpAll(() {
    when(repository.fetchInboxMessages()).thenAnswer((_) async* {
      String _response = await File('fixtures/jsons/inbox.json').readAsString();

      List<InboxMessageDto> _inboxResponseHelper =
          (jsonDecode(_response) as List<Object?>)
              .map((Object? e) =>
                  InboxMessageDto.fromJson(e as Map<String, Object?>))
              .toList();
      yield _inboxResponseHelper;
    });

    when(repository.messageDetailByGroupId(argThat(equals('9991'))))
        .thenAnswer((Invocation i) async* {
      String _response =
          await File('fixtures/jsons/message_detail_9991.json').readAsString();

      List<MessageDetailDto> _messagesDetailResponseHelper =
          (jsonDecode(_response) as List<Object?>)
              .map((Object? e) =>
                  MessageDetailDto.fromJson(e as Map<String, Object?>))
              .toList();
      yield _messagesDetailResponseHelper;
    });

    when(repository.lastMessageFromSocketByGroupId(any))
        .thenAnswer((_) => _fakeSocket.stream);

    when(
      repository.sendMessage(
        message: argThat(equals('test!'), named: 'message'),
        id: argThat(equals('9991'), named: 'id'),
      ),
    ).thenAnswer((realInvocation) async* {
      _fakeSocket.add(_added);
      yield true;
    });
  });

  tearDownAll(() {
    _fakeSocket.close();
  });

  test('Fetch inbox messages', () {
    MessageDetailCubit cubit =
        messageDetailCubitFactory(id: '9991', topic: 'pizza night');

    expect(
        cubit.stream,
        emitsInOrder(<Matcher>[
          isA<MessageDetailState>().having((p0) => p0.messages?.length,
              'having fetched message ', equals(3)),
          isA<MessageDetailState>().having((p0) => p0.messages?.length,
              'having fetched messages + socket', equals(4)),
        ]));
    _fakeSocket.add(_added);
  });

  test('Add new message', () async {
    MessageDetailCubit cubit =
        messageDetailCubitFactory(id: '9991', topic: 'pizza night');

    expect(
        cubit.stream,
        emitsInOrder(<Matcher>[
          isA<MessageDetailState>().having((p0) => p0.messages?.length,
              'having fetched message ', equals(3)),
          isA<MessageDetailState>().having((p0) => p0.messages?.first.message,
              'having fetched messages + socket', equals('test!')),
        ]));

    cubit.submitMessage('test!');

    await untilCalled(repository.sendMessage(
        id: anyNamed('id'), message: anyNamed('message')));
    verify(
      repository.sendMessage(
        message: argThat(equals('test!'), named: 'message'),
        id: argThat(equals('9991'), named: 'id'),
      ),
    ).called(1);
  });
}
