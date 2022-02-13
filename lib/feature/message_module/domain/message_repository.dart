import 'package:idt_messager/feature/message_module/inbox/data/models/inbox_message_dto.dart';
import 'package:idt_messager/feature/message_module/message_detail/data/models/message_detail_dto.dart';

abstract class MessageRepository {
  Stream<List<InboxMessageDto>> fetchInboxMessages();
  Stream<List<MessageDetailDto>> messageDetailByGroupId(String id);
  Stream<MessageDetailDto> lastMessageFromSocketByGroupId(String id);
  Stream<bool> sendMessage({required String message, required String id});
  Future<void> dispose();
}
