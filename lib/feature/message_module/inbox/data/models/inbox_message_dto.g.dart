// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InboxMessageDto _$$_InboxMessageDtoFromJson(Map<String, dynamic> json) =>
    _$_InboxMessageDto(
      id: json['id'] as String,
      lastMessage: json['last_message'] as String?,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      topic: json['topic'] as String?,
      modifiedAt: json['modified_at'] as int,
    );

Map<String, dynamic> _$$_InboxMessageDtoToJson(_$_InboxMessageDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_message', instance.lastMessage);
  val['members'] = instance.members;
  writeNotNull('topic', instance.topic);
  val['modified_at'] = instance.modifiedAt;
  return val;
}
