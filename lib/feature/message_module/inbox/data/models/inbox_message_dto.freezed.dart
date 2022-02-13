// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InboxMessageDto _$InboxMessageDtoFromJson(Map<String, dynamic> json) {
  return _InboxMessageDto.fromJson(json);
}

/// @nodoc
class _$InboxMessageDtoTearOff {
  const _$InboxMessageDtoTearOff();

  _InboxMessageDto call(
      {required String id,
      String? lastMessage,
      required List<String> members,
      String? topic,
      required int modifiedAt}) {
    return _InboxMessageDto(
      id: id,
      lastMessage: lastMessage,
      members: members,
      topic: topic,
      modifiedAt: modifiedAt,
    );
  }

  InboxMessageDto fromJson(Map<String, Object?> json) {
    return InboxMessageDto.fromJson(json);
  }
}

/// @nodoc
const $InboxMessageDto = _$InboxMessageDtoTearOff();

/// @nodoc
mixin _$InboxMessageDto {
  String get id => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  int get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InboxMessageDtoCopyWith<InboxMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxMessageDtoCopyWith<$Res> {
  factory $InboxMessageDtoCopyWith(
          InboxMessageDto value, $Res Function(InboxMessageDto) then) =
      _$InboxMessageDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? lastMessage,
      List<String> members,
      String? topic,
      int modifiedAt});
}

/// @nodoc
class _$InboxMessageDtoCopyWithImpl<$Res>
    implements $InboxMessageDtoCopyWith<$Res> {
  _$InboxMessageDtoCopyWithImpl(this._value, this._then);

  final InboxMessageDto _value;
  // ignore: unused_field
  final $Res Function(InboxMessageDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lastMessage = freezed,
    Object? members = freezed,
    Object? topic = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InboxMessageDtoCopyWith<$Res>
    implements $InboxMessageDtoCopyWith<$Res> {
  factory _$InboxMessageDtoCopyWith(
          _InboxMessageDto value, $Res Function(_InboxMessageDto) then) =
      __$InboxMessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? lastMessage,
      List<String> members,
      String? topic,
      int modifiedAt});
}

/// @nodoc
class __$InboxMessageDtoCopyWithImpl<$Res>
    extends _$InboxMessageDtoCopyWithImpl<$Res>
    implements _$InboxMessageDtoCopyWith<$Res> {
  __$InboxMessageDtoCopyWithImpl(
      _InboxMessageDto _value, $Res Function(_InboxMessageDto) _then)
      : super(_value, (v) => _then(v as _InboxMessageDto));

  @override
  _InboxMessageDto get _value => super._value as _InboxMessageDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? lastMessage = freezed,
    Object? members = freezed,
    Object? topic = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_InboxMessageDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InboxMessageDto implements _InboxMessageDto {
  const _$_InboxMessageDto(
      {required this.id,
      this.lastMessage,
      required this.members,
      this.topic,
      required this.modifiedAt});

  factory _$_InboxMessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_InboxMessageDtoFromJson(json);

  @override
  final String id;
  @override
  final String? lastMessage;
  @override
  final List<String> members;
  @override
  final String? topic;
  @override
  final int modifiedAt;

  @override
  String toString() {
    return 'InboxMessageDto(id: $id, lastMessage: $lastMessage, members: $members, topic: $topic, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InboxMessageDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.lastMessage, lastMessage) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality()
                .equals(other.modifiedAt, modifiedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(lastMessage),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(modifiedAt));

  @JsonKey(ignore: true)
  @override
  _$InboxMessageDtoCopyWith<_InboxMessageDto> get copyWith =>
      __$InboxMessageDtoCopyWithImpl<_InboxMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InboxMessageDtoToJson(this);
  }
}

abstract class _InboxMessageDto implements InboxMessageDto {
  const factory _InboxMessageDto(
      {required String id,
      String? lastMessage,
      required List<String> members,
      String? topic,
      required int modifiedAt}) = _$_InboxMessageDto;

  factory _InboxMessageDto.fromJson(Map<String, dynamic> json) =
      _$_InboxMessageDto.fromJson;

  @override
  String get id;
  @override
  String? get lastMessage;
  @override
  List<String> get members;
  @override
  String? get topic;
  @override
  int get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$InboxMessageDtoCopyWith<_InboxMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
