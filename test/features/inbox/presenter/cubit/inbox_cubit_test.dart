import 'package:flutter_test/flutter_test.dart';
import 'package:idt_messager/feature/message_module/data/message_repository_imp.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/inbox_data_source.dart';
import 'package:idt_messager/feature/message_module/inbox/presenter/cubit/inbox_cubit.dart';


void main() {
  InboxCubit inboxCubitFactory() =>
      InboxCubit(dataSource: InboxDataSourceImp(
         messageRepository: MessageRepositoryImp()
      ));

  test('Fetch inbox messages', () {
    InboxCubit cubit = inboxCubitFactory();

    expect(cubit.stream, emits(isA<InboxInitialState>()));

  });
}
