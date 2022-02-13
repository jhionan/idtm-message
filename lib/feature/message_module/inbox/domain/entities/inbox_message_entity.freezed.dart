// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InboxMessageEntityTearOff {
  const _$InboxMessageEntityTearOff();

  _InboxMessageEntity call(
      {required String id,
      required String lastMessage,
      required String members,
      required String topic,
      required DateTime modifiedAt}) {
    return _InboxMessageEntity(
      id: id,
      lastMessage: lastMessage,
      members: members,
      topic: topic,
      modifiedAt: modifiedAt,
    );
  }
}

/// @nodoc
const $InboxMessageEntity = _$InboxMessageEntityTearOff();

/// @nodoc
mixin _$InboxMessageEntity {
  String get id => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  String get members => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxMessageEntityCopyWith<InboxMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxMessageEntityCopyWith<$Res> {
  factory $InboxMessageEntityCopyWith(
          InboxMessageEntity value, $Res Function(InboxMessageEntity) then) =
      _$InboxMessageEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String lastMessage,
      String members,
      String topic,
      DateTime modifiedAt});
}

/// @nodoc
class _$InboxMessageEntityCopyWithImpl<$Res>
    implements $InboxMessageEntityCopyWith<$Res> {
  _$InboxMessageEntityCopyWithImpl(this._value, this._then);

  final InboxMessageEntity _value;
  // ignore: unused_field
  final $Res Function(InboxMessageEntity) _then;

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
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as String,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$InboxMessageEntityCopyWith<$Res>
    implements $InboxMessageEntityCopyWith<$Res> {
  factory _$InboxMessageEntityCopyWith(
          _InboxMessageEntity value, $Res Function(_InboxMessageEntity) then) =
      __$InboxMessageEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String lastMessage,
      String members,
      String topic,
      DateTime modifiedAt});
}

/// @nodoc
class __$InboxMessageEntityCopyWithImpl<$Res>
    extends _$InboxMessageEntityCopyWithImpl<$Res>
    implements _$InboxMessageEntityCopyWith<$Res> {
  __$InboxMessageEntityCopyWithImpl(
      _InboxMessageEntity _value, $Res Function(_InboxMessageEntity) _then)
      : super(_value, (v) => _then(v as _InboxMessageEntity));

  @override
  _InboxMessageEntity get _value => super._value as _InboxMessageEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? lastMessage = freezed,
    Object? members = freezed,
    Object? topic = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_InboxMessageEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as String,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_InboxMessageEntity implements _InboxMessageEntity {
  const _$_InboxMessageEntity(
      {required this.id,
      required this.lastMessage,
      required this.members,
      required this.topic,
      required this.modifiedAt});

  @override
  final String id;
  @override
  final String lastMessage;
  @override
  final String members;
  @override
  final String topic;
  @override
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'InboxMessageEntity(id: $id, lastMessage: $lastMessage, members: $members, topic: $topic, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InboxMessageEntity &&
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
  _$InboxMessageEntityCopyWith<_InboxMessageEntity> get copyWith =>
      __$InboxMessageEntityCopyWithImpl<_InboxMessageEntity>(this, _$identity);
}

abstract class _InboxMessageEntity implements InboxMessageEntity {
  const factory _InboxMessageEntity(
      {required String id,
      required String lastMessage,
      required String members,
      required String topic,
      required DateTime modifiedAt}) = _$_InboxMessageEntity;

  @override
  String get id;
  @override
  String get lastMessage;
  @override
  String get members;
  @override
  String get topic;
  @override
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$InboxMessageEntityCopyWith<_InboxMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
