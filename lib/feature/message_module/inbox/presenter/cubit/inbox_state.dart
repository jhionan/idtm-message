part of 'inbox_cubit.dart';

@freezed
class InboxState with _$InboxState {
  const factory InboxState({List<InboxMessageEntity>? messages}) =
      InboxInitialState;
}
