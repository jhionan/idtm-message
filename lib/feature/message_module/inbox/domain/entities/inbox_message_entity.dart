import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_message_entity.freezed.dart';

@freezed
class InboxMessageEntity with _$InboxMessageEntity {
  const factory InboxMessageEntity({
    required String id,
    required String lastMessage,
    required String members,
    required String topic,
    required DateTime modifiedAt,
  }) = _InboxMessageEntity;
}
