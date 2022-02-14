import '../../domain/message_repository.dart';
import '../data/models/inbox_message_dto.dart';
import 'entities/inbox_message_entity.dart';

abstract class InboxDataSource {
  Stream<List<InboxMessageEntity>> fetchInboxMessages();
  Future<void> dispose();
}

class InboxDataSourceImp implements InboxDataSource {
  InboxDataSourceImp({required this.messageRepository});

  final MessageRepository messageRepository;

  @override
  Stream<List<InboxMessageEntity>> fetchInboxMessages() async* {
    yield* messageRepository
        .fetchInboxMessages()
        .map((List<InboxMessageDto> event) {
      return event
          .map((InboxMessageDto dto) => InboxMessageEntity(
              id: dto.id,
              lastMessage: dto.lastMessage ?? '',
              members: dto.members.join(', '),
              modifiedAt: DateTime.fromMillisecondsSinceEpoch(dto.modifiedAt),
              topic: dto.topic ?? ''))
          .toList();
    });
  }

  @override
  Future<void> dispose() async {
    return messageRepository.dispose();
  }
}
