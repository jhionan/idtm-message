import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idt_messager/feature/message_module/inbox/domain/entities/inbox_message_entity.dart';
import 'package:idt_messager/feature/message_module/inbox/presenter/widgets/inbox_item.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/cubit/message_detail_provider.dart';

import 'cubit/inbox_cubit.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = 'IDT Messager'; //we can easy swith this to intl String
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: BlocBuilder<InboxCubit, InboxState>(
        builder: (BuildContext context, InboxState state) {
          if (state.messages == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: state.messages!.length,
              itemBuilder: (BuildContext context, int index) {
                InboxMessageEntity message = state.messages![index];
                return InboxItem(
                  topic: message.topic,
                  lastMessage: message.lastMessage,
                  lastUpdate: message.modifiedAt,
                  members: message.members,
                  onTap: () => _navigateToDetails(
                      id: message.id, context: context, topic: message.topic),
                );
              });
        },
      ),
    );
  }

  void _navigateToDetails(
      {required String id,
      required BuildContext context,
      required String topic}) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return MessageDetailProvider(id: id, topic: topic);
    }));
  }
}
