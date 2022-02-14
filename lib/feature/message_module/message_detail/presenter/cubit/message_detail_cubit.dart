import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:idt_messager/core/utils/disposable.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/entities/message_detail_entity.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/message_detail_data_souce.dart';

part 'message_detail_state.dart';
part 'message_detail_cubit.freezed.dart';

class MessageDetailCubit extends Cubit<MessageDetailState> with Disposable {
  MessageDetailCubit(
      {required this.dataSource, required this.topic, required this.id})
      : super(MessageDetailState(topic: topic)) {
    _init();
  }
  final String topic;
  final String id;

  final MessageDetailDataSource dataSource;

  //init exist because is not possible to have async constructor.
  Future<void> _init() async {
    await _fetchDetailedMessages();
    _connectToSocket();
  }

  Future<void> _fetchDetailedMessages() async {
    return dataSource
        .detailsByChatId(id)
        .listen((event) {
          emit(state.copyWith(
              messages: <MessageDetailEntity>{
            ...(state.messages ?? []),
            ...event,
          }.toList()));
        }, onError: (Object error) {
          //Todo
        })
        .subscribe(this)
        .asFuture();
  }

  void submitMessage(String text) {
    dataSource.sendMessage(message: text, id: id).listen((_) {});
  }

  void _connectToSocket() {
    dataSource.messagesFromSocket(id).listen((MessageDetailEntity message) {
      //using set to have sure that no message is duplicated
      emit(state.copyWith(
          messages: <MessageDetailEntity>{message, ...(state.messages ?? [])}
              .toList()));
    }).subscribe(this);
  }

  @override
  Future<void> close() async {
    await dataSource.dispose();
    return super.close();
  }
}
