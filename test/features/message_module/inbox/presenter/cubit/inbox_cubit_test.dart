import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:idt_messager/feature/message_module/domain/message_repository.dart';
import 'package:idt_messager/feature/message_module/inbox/data/models/inbox_message_dto.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/inbox_data_source.dart';
import 'package:idt_messager/feature/message_module/inbox/presenter/cubit/inbox_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'inbox_cubit_test.mocks.dart';

@GenerateMocks(<Type>[MessageRepository])
void main() {
  MockMessageRepository repository = MockMessageRepository();
  InboxCubit inboxCubitFactory() =>
      InboxCubit(dataSource: InboxDataSourceImp(messageRepository: repository));

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
  });

  test('Fetch inbox messages', () {
    InboxCubit cubit = inboxCubitFactory();

    expect(
        cubit.stream,
        emits(isA<InboxState>().having(
            (p0) => p0.messages, 'messages fetched != null', isNotEmpty)));
  });
}
