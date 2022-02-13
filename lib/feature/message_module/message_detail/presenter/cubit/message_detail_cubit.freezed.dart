// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageDetailStateTearOff {
  const _$MessageDetailStateTearOff();

  MessageDetailStateInitial call(
      {List<MessageDetailEntity>? messages, String topic = ''}) {
    return MessageDetailStateInitial(
      messages: messages,
      topic: topic,
    );
  }
}

/// @nodoc
const $MessageDetailState = _$MessageDetailStateTearOff();

/// @nodoc
mixin _$MessageDetailState {
  List<MessageDetailEntity>? get messages => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDetailStateCopyWith<MessageDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailStateCopyWith<$Res> {
  factory $MessageDetailStateCopyWith(
          MessageDetailState value, $Res Function(MessageDetailState) then) =
      _$MessageDetailStateCopyWithImpl<$Res>;
  $Res call({List<MessageDetailEntity>? messages, String topic});
}

/// @nodoc
class _$MessageDetailStateCopyWithImpl<$Res>
    implements $MessageDetailStateCopyWith<$Res> {
  _$MessageDetailStateCopyWithImpl(this._value, this._then);

  final MessageDetailState _value;
  // ignore: unused_field
  final $Res Function(MessageDetailState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? topic = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDetailEntity>?,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $MessageDetailStateInitialCopyWith<$Res>
    implements $MessageDetailStateCopyWith<$Res> {
  factory $MessageDetailStateInitialCopyWith(MessageDetailStateInitial value,
          $Res Function(MessageDetailStateInitial) then) =
      _$MessageDetailStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({List<MessageDetailEntity>? messages, String topic});
}

/// @nodoc
class _$MessageDetailStateInitialCopyWithImpl<$Res>
    extends _$MessageDetailStateCopyWithImpl<$Res>
    implements $MessageDetailStateInitialCopyWith<$Res> {
  _$MessageDetailStateInitialCopyWithImpl(MessageDetailStateInitial _value,
      $Res Function(MessageDetailStateInitial) _then)
      : super(_value, (v) => _then(v as MessageDetailStateInitial));

  @override
  MessageDetailStateInitial get _value =>
      super._value as MessageDetailStateInitial;

  @override
  $Res call({
    Object? messages = freezed,
    Object? topic = freezed,
  }) {
    return _then(MessageDetailStateInitial(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDetailEntity>?,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageDetailStateInitial implements MessageDetailStateInitial {
  const _$MessageDetailStateInitial({this.messages, this.topic = ''});

  @override
  final List<MessageDetailEntity>? messages;
  @JsonKey()
  @override
  final String topic;

  @override
  String toString() {
    return 'MessageDetailState(messages: $messages, topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageDetailStateInitial &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.topic, topic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(topic));

  @JsonKey(ignore: true)
  @override
  $MessageDetailStateInitialCopyWith<MessageDetailStateInitial> get copyWith =>
      _$MessageDetailStateInitialCopyWithImpl<MessageDetailStateInitial>(
          this, _$identity);
}

abstract class MessageDetailStateInitial implements MessageDetailState {
  const factory MessageDetailStateInitial(
      {List<MessageDetailEntity>? messages,
      String topic}) = _$MessageDetailStateInitial;

  @override
  List<MessageDetailEntity>? get messages;
  @override
  String get topic;
  @override
  @JsonKey(ignore: true)
  $MessageDetailStateInitialCopyWith<MessageDetailStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
