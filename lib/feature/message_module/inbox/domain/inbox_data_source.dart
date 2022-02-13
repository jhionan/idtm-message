import 'package:idt_messager/feature/message_module/domain/message_repository.dart';
import 'package:idt_messager/feature/message_module/inbox/data/models/inbox_message_dto.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/entities/inbox_message_entity.dart';

abstract class InboxDataSource {
  Stream<List<InboxMessageEntity>> fetchInboxMessages();
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
                lastMessage: dto.lastMessage?? '',
                members: dto.members.join(', '),
                modifiedAt: DateTime.fromMillisecondsSinceEpoch(dto.modifiedAt),
                topic: dto.topic??''
              ))
          .toList();
    });
  }
}
