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
    _fetchDetailedMessages();
    _connectToSocket();
  }
  final String topic;
  final String id;

  final MessageDetailDataSource dataSource;

  void _fetchDetailedMessages() {
    dataSource.detailsByChatId(id).listen((event) {
      emit(state.copyWith(messages: event));
    }, onError: (Object error) {
      //Todo
    }).subscribe(this);
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
    });
  }
}
