import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:idt_messager/core/utils/disposable.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/entities/inbox_message_entity.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/inbox_data_source.dart';

part 'inbox_state.dart';
part 'inbox_cubit.freezed.dart';

class InboxCubit extends Cubit<InboxState> with Disposable {
  InboxCubit({required this.dataSource}) : super(const InboxState()) {
    _fetchInboxMessages();
  }

  final InboxDataSource dataSource;

  void _fetchInboxMessages() {
    dataSource.fetchInboxMessages().listen((List<InboxMessageEntity> messages) {
      emit(state.copyWith(messages: messages));
    }).subscribe(this);
  }

  @override
  Future<void> close() async {
    await dataSource.dispose();
    return super.close();
  }
}
