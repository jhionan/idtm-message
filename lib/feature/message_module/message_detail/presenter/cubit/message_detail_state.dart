part of 'message_detail_cubit.dart';

@freezed
class MessageDetailState with _$MessageDetailState {
  const factory MessageDetailState({
    List<MessageDetailEntity>? messages,
    @Default('') String topic
  }) = MessageDetailStateInitial;
}
