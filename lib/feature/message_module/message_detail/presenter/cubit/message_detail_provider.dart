import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idt_messager/feature/message_module/data/message_repository_imp.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/message_detail_data_souce.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/cubit/message_detail_cubit.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/message_detail_view.dart';

class MessageDetailProvider extends StatelessWidget {
  const MessageDetailProvider({Key? key, required this.id, required this.topic})
      : super(key: key);

  final String id;
  final String topic;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MessageDetailCubit(
          dataSource: MessageDetailDataSourceImp(
              messageRepository: MessageRepositoryImp()),
          id: id,
          topic: topic),
          child: const MessageDetailView(),
    );
  }
}
