import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import '../domain/message_repository.dart';
import '../inbox/data/models/inbox_message_dto.dart';
import '../message_detail/data/models/message_detail_dto.dart';

class MessageRepositoryImp implements MessageRepository {
  static List<InboxMessageDto>? _inboxResponseHelper;
  static List<MessageDetailDto>? _messagesDetailResponseHelper;
  final StreamController<MessageDetailDto> _fakeSocket =
      StreamController.broadcast();

  static String? appPath;

///Init is creating json files accessible path, so this fake repository can
///override the json created.
  Future<void> _init() async {
    appPath = (await getApplicationSupportDirectory()).path;
    File file = File('$appPath/inbox.json');
    if (!await file.exists()) {
      file.writeAsString(
          await rootBundle.loadString('fixtures/jsons/inbox.json'));
      for (int i = 9991; i <= 9993; i++) {
        File('$appPath/message_detail_$i.json').writeAsString(await rootBundle
            .loadString('fixtures/jsons/message_detail_$i.json'));
      }
    }
  }

  @override
  Stream<List<InboxMessageDto>> fetchInboxMessages() async* {
    await _init();
    String _response = await File('$appPath/inbox.json').readAsString();

    _inboxResponseHelper = (jsonDecode(_response) as List<Object?>)
        .map((Object? e) => InboxMessageDto.fromJson(e as Map<String, Object?>))
        .toList();
    yield _inboxResponseHelper!;
  }

  @override
  Stream<MessageDetailDto> lastMessageFromSocketByGroupId(String id) async* {
    yield* _fakeSocket.stream;
  }

  @override
  Stream<List<MessageDetailDto>> messageDetailByGroupId(String id) async* {
    String response =
        await File('$appPath/message_detail_$id.json').readAsString();

    _messagesDetailResponseHelper = (jsonDecode(response) as List<Object?>)
        .map(
            (Object? e) => MessageDetailDto.fromJson(e as Map<String, Object?>))
        .toList();
    yield _messagesDetailResponseHelper!;
  }

  @override
  Stream<bool> sendMessage({
    required String message,
    required String id,
  }) async* {
    if (_messagesDetailResponseHelper != null && _inboxResponseHelper != null) {
      await _createNewMessage(message, id);

      await _generateResponse(id);

      yield true;
      return;
    }
    yield false;
  }

  Future<void> _createNewMessage(String message, String id,
      {bool isFake = false}) async {
    MessageDetailDto newMessage = MessageDetailDto(
        id: (int.parse(_messagesDetailResponseHelper!.first.id) + 1).toString(),
        message: message,
        modifiedAt: DateTime.now().millisecondsSinceEpoch,
        sender: isFake
            ? _messagesDetailResponseHelper!
                .firstWhere(
                  (element) => element.sender != 'You',
                )
                .sender
            : 'You');
    await _writeOnJsons(newMessage, id);
    _fakeSocket.add(newMessage);
  }

  @override
  Future<void> dispose() async {
    await _fakeSocket.close();
  }

  Future<void> _writeOnJsons(MessageDetailDto newMessage, String id) async {
    File _newJson = File('$appPath/message_detail_$id.json');
    await _newJson.writeAsString(
        jsonEncode(_messagesDetailResponseHelper!..insert(0, newMessage)));
    print(_messagesDetailResponseHelper);
  }

  Future<void> _generateResponse(String id) async {
    await Future.delayed(Duration(seconds: 2), () {});
    String fake = Faker.instance.lorem.text();
    print(fake);
    return await _createNewMessage(fake, id, isFake: true);
  }
}
