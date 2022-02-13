// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDetailDto _$$_MessageDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageDetailDto(
      id: json['id'] as String,
      message: json['message'] as String,
      modifiedAt: json['modified_at'] as int,
      sender: json['sender'] as String?,
    );

Map<String, dynamic> _$$_MessageDetailDtoToJson(_$_MessageDetailDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'message': instance.message,
    'modified_at': instance.modifiedAt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sender', instance.sender);
  return val;
}
