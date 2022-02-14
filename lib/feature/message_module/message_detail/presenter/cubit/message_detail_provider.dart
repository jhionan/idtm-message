import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/message_repository_imp.dart';
import '../../domain/message_detail_data_souce.dart';
import '../message_detail_view.dart';
import 'message_detail_cubit.dart';

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
