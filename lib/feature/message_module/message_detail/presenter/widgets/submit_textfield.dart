import 'package:flutter/material.dart';
import 'package:idt_messager/feature/message_module/message_detail/presenter/cubit/message_detail_cubit.dart';

class SubmitTextfield extends StatefulWidget {
  const SubmitTextfield({Key? key, required this.cubit}) : super(key: key);

  final MessageDetailCubit cubit;

  @override
  _SubmitTextfieldState createState() => _SubmitTextfieldState();
}

class _SubmitTextfieldState extends State<SubmitTextfield> {
  late final TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 2.0, offset: Offset(2, 2))
          ]),
      child: TextField(
        controller: _controller,
        textInputAction: TextInputAction.send,
        decoration: InputDecoration(
          suffixIcon: Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => sumitMessage(),
              icon: const Icon(Icons.send),
              splashRadius: 24,
            ),
          ),
        ),
        onSubmitted: (_) => sumitMessage(),
      ),
    );
  }

  void sumitMessage() {
    widget.cubit.submitMessage(_controller.text);
    _controller.clear();
    
  }
}
