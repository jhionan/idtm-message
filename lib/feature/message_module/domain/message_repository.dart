import '../inbox/data/models/inbox_message_dto.dart';
import '../message_detail/data/models/message_detail_dto.dart';

abstract class MessageRepository {
  Stream<List<InboxMessageDto>> fetchInboxMessages();
  Stream<List<MessageDetailDto>> messageDetailByGroupId(String id);
  Stream<MessageDetailDto> lastMessageFromSocketByGroupId(String id);
  Stream<bool> sendMessage({required String message, required String id});
  Future<void> dispose();
}
