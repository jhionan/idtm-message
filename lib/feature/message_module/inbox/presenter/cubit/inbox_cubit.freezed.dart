// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InboxStateTearOff {
  const _$InboxStateTearOff();

  InboxInitialState call({List<InboxMessageEntity>? messages}) {
    return InboxInitialState(
      messages: messages,
    );
  }
}

/// @nodoc
const $InboxState = _$InboxStateTearOff();

/// @nodoc
mixin _$InboxState {
  List<InboxMessageEntity>? get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxStateCopyWith<InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res>;
  $Res call({List<InboxMessageEntity>? messages});
}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res> implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  final InboxState _value;
  // ignore: unused_field
  final $Res Function(InboxState) _then;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<InboxMessageEntity>?,
    ));
  }
}

/// @nodoc
abstract class $InboxInitialStateCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory $InboxInitialStateCopyWith(
          InboxInitialState value, $Res Function(InboxInitialState) then) =
      _$InboxInitialStateCopyWithImpl<$Res>;
  @override
  $Res call({List<InboxMessageEntity>? messages});
}

/// @nodoc
class _$InboxInitialStateCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res>
    implements $InboxInitialStateCopyWith<$Res> {
  _$InboxInitialStateCopyWithImpl(
      InboxInitialState _value, $Res Function(InboxInitialState) _then)
      : super(_value, (v) => _then(v as InboxInitialState));

  @override
  InboxInitialState get _value => super._value as InboxInitialState;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(InboxInitialState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<InboxMessageEntity>?,
    ));
  }
}

/// @nodoc

class _$InboxInitialState implements InboxInitialState {
  const _$InboxInitialState({this.messages});

  @override
  final List<InboxMessageEntity>? messages;

  @override
  String toString() {
    return 'InboxState(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InboxInitialState &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  $InboxInitialStateCopyWith<InboxInitialState> get copyWith =>
      _$InboxInitialStateCopyWithImpl<InboxInitialState>(this, _$identity);
}

abstract class InboxInitialState implements InboxState {
  const factory InboxInitialState({List<InboxMessageEntity>? messages}) =
      _$InboxInitialState;

  @override
  List<InboxMessageEntity>? get messages;
  @override
  @JsonKey(ignore: true)
  $InboxInitialStateCopyWith<InboxInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
