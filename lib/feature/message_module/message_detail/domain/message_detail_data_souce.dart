import 'package:idt_messager/feature/message_module/domain/message_repository.dart';
import 'package:idt_messager/feature/message_module/message_detail/data/models/message_detail_dto.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/entities/message_detail_entity.dart';
import 'package:idt_messager/core/utils/extensions.dart';

abstract class MessageDetailDataSource {
  Stream<List<MessageDetailEntity>> detailsByChatId(String id);
  Stream<bool> sendMessage({required String message, required String id});
  Stream<MessageDetailEntity> messagesFromSocket(String id);
  Future<void> dispose();
}

class MessageDetailDataSourceImp implements MessageDetailDataSource {
  MessageDetailDataSourceImp({required this.messageRepository});

  final MessageRepository messageRepository;

  @override
  Stream<List<MessageDetailEntity>> detailsByChatId(String id) async* {
    yield* messageRepository
        .messageDetailByGroupId(id)
        .map((List<MessageDetailDto> event) {
      return event.map(messageDetailEntityFromDto).toList();
    });
  }

  MessageDetailEntity messageDetailEntityFromDto(MessageDetailDto dto) =>
      MessageDetailEntity(
          id: dto.id,
          message: dto.message,
          modifiedAt:
              DateTime.fromMillisecondsSinceEpoch(dto.modifiedAt).toMMMEd(),
          sender: dto.sender);

  @override
  Stream<MessageDetailEntity> messagesFromSocket(String id) async* {
    yield* messageRepository
        .lastMessageFromSocketByGroupId(id)
        .map(messageDetailEntityFromDto);
  }

  @override
  Stream<bool> sendMessage(
      {required String message, required String id}) async* {
    yield* messageRepository.sendMessage(id: id, message: message);
  }

  @override
  Future<void> dispose() async {
    return messageRepository.dispose();
  }
}
