import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:idt_messager/feature/message_module/message_detail/domain/entities/message_detail_entity.dart';

class MessageDetailItem extends StatelessWidget {
  const MessageDetailItem({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageDetailEntity message;

  @override
  Widget build(BuildContext context) {
    String stringColor = '70${message.sender.hashCode}'.substring(0, 8);
    int color = int.parse(stringColor, radix: 16);
    return ChatBubble(
      clipper: ChatBubbleClipper2(
          type: message.sender == 'You'
              ? BubbleType.sendBubble
              : BubbleType.receiverBubble),
      backGroundColor: Color(color),
      margin: const EdgeInsets.all(16),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: message.message),
            const TextSpan(text: '\n'),
            TextSpan(
                text: message.sender,
                style: const TextStyle(
                    fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
            const TextSpan(
              text: ' - ',
            ),
            TextSpan(
                text: message.modifiedAt,
                style: const TextStyle(
                    fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}