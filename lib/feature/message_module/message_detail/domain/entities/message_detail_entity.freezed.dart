// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageDetailEntityTearOff {
  const _$MessageDetailEntityTearOff();

  _MessageDetailDto call(
      {required String id,
      required String message,
      required String modifiedAt,
      String? sender}) {
    return _MessageDetailDto(
      id: id,
      message: message,
      modifiedAt: modifiedAt,
      sender: sender,
    );
  }
}

/// @nodoc
const $MessageDetailEntity = _$MessageDetailEntityTearOff();

/// @nodoc
mixin _$MessageDetailEntity {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get modifiedAt => throw _privateConstructorUsedError;
  String? get sender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDetailEntityCopyWith<MessageDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailEntityCopyWith<$Res> {
  factory $MessageDetailEntityCopyWith(
          MessageDetailEntity value, $Res Function(MessageDetailEntity) then) =
      _$MessageDetailEntityCopyWithImpl<$Res>;
  $Res call({String id, String message, String modifiedAt, String? sender});
}

/// @nodoc
class _$MessageDetailEntityCopyWithImpl<$Res>
    implements $MessageDetailEntityCopyWith<$Res> {
  _$MessageDetailEntityCopyWithImpl(this._value, this._then);

  final MessageDetailEntity _value;
  // ignore: unused_field
  final $Res Function(MessageDetailEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? modifiedAt = freezed,
    Object? sender = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MessageDetailDtoCopyWith<$Res>
    implements $MessageDetailEntityCopyWith<$Res> {
  factory _$MessageDetailDtoCopyWith(
          _MessageDetailDto value, $Res Function(_MessageDetailDto) then) =
      __$MessageDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String message, String modifiedAt, String? sender});
}

/// @nodoc
class __$MessageDetailDtoCopyWithImpl<$Res>
    extends _$MessageDetailEntityCopyWithImpl<$Res>
    implements _$MessageDetailDtoCopyWith<$Res> {
  __$MessageDetailDtoCopyWithImpl(
      _MessageDetailDto _value, $Res Function(_MessageDetailDto) _then)
      : super(_value, (v) => _then(v as _MessageDetailDto));

  @override
  _MessageDetailDto get _value => super._value as _MessageDetailDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? modifiedAt = freezed,
    Object? sender = freezed,
  }) {
    return _then(_MessageDetailDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MessageDetailDto implements _MessageDetailDto {
  const _$_MessageDetailDto(
      {required this.id,
      required this.message,
      required this.modifiedAt,
      this.sender});

  @override
  final String id;
  @override
  final String message;
  @override
  final String modifiedAt;
  @override
  final String? sender;

  @override
  String toString() {
    return 'MessageDetailEntity(id: $id, message: $message, modifiedAt: $modifiedAt, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageDetailDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.modifiedAt, modifiedAt) &&
            const DeepCollectionEquality().equals(other.sender, sender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(modifiedAt),
      const DeepCollectionEquality().hash(sender));

  @JsonKey(ignore: true)
  @override
  _$MessageDetailDtoCopyWith<_MessageDetailDto> get copyWith =>
      __$MessageDetailDtoCopyWithImpl<_MessageDetailDto>(this, _$identity);
}

abstract class _MessageDetailDto implements MessageDetailEntity {
  const factory _MessageDetailDto(
      {required String id,
      required String message,
      required String modifiedAt,
      String? sender}) = _$_MessageDetailDto;

  @override
  String get id;
  @override
  String get message;
  @override
  String get modifiedAt;
  @override
  String? get sender;
  @override
  @JsonKey(ignore: true)
  _$MessageDetailDtoCopyWith<_MessageDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
