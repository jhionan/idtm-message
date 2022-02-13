import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_message_dto.freezed.dart';
part 'inbox_message_dto.g.dart';

@freezed
class InboxMessageDto with _$InboxMessageDto {
    const factory InboxMessageDto({
        required String id,
        String? lastMessage,
        required List<String> members,
        String? topic,
        required int modifiedAt,
    }) = _InboxMessageDto;

    factory InboxMessageDto.fromJson(Map<String, dynamic> json) =>
        _$InboxMessageDtoFromJson(json);
}
