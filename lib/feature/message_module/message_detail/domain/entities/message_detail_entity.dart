import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_detail_entity.freezed.dart';

@freezed
class MessageDetailEntity with _$MessageDetailEntity {
  const factory MessageDetailEntity({
    required String id,
    required String message,
    required String modifiedAt,
    String? sender,
  }) = _MessageDetailDto;
}
