import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idt_messager/feature/message_module/data/message_repository_imp.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/inbox_data_source.dart';


import 'package:idt_messager/feature/message_module/inbox/presenter/cubit/inbox_cubit.dart';
import 'package:idt_messager/feature/message_module/inbox/presenter/inbox.dart';

class InboxProvider extends StatelessWidget {
  const InboxProvider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) => InboxCubit(
      dataSource: InboxDataSourceImp(
        messageRepository: MessageRepositoryImp()
      )
    ),
      child: const Inbox(),
    );
  }
}