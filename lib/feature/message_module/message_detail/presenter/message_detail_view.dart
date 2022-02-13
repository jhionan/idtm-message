import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/entities/message_detail_entity.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/cubit/message_detail_cubit.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/widgets/message_detail_item.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/widgets/submit_textfield.dart';

class MessageDetailView extends StatelessWidget {
  const MessageDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageDetailCubit, MessageDetailState>(
      builder: (context, state) {
        if (state.messages == null) {
          return _Scaffold(
            title: state.topic,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return _Scaffold(
          title: state.topic,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                    itemCount: state.messages!.length,
                    itemBuilder: (BuildContext context, int index) {
                      MessageDetailEntity message = state.messages![index];
                      return MessageDetailItem(
                        message: message,
                      );
                    }),
              ),
              SubmitTextfield(cubit: context.read(),)
            ],
          ),
        );
      },
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({Key? key, required this.child, required this.title})
      : super(key: key);
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: child),
    );
  }
}
