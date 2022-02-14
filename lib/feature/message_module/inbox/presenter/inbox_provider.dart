import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/message_repository_imp.dart';
import '../domain/inbox_data_source.dart';
import 'cubit/inbox_cubit.dart';
import 'inbox.dart';

class InboxProvider extends StatelessWidget {
  const InboxProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => InboxCubit(
          dataSource:
              InboxDataSourceImp(messageRepository: MessageRepositoryImp())),
      child: const Inbox(),
    );
  }
}
