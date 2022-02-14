import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_detail_dto.freezed.dart';
part 'message_detail_dto.g.dart';

@freezed
class MessageDetailDto with _$MessageDetailDto {
  const factory MessageDetailDto({
    required String id,
    required String message,
    required int modifiedAt,
    String? sender,
  }) = _MessageDetailDto;

  factory MessageDetailDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDetailDtoFromJson(json);
}
