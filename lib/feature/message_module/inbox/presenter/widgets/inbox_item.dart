import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions.dart';

class InboxItem extends StatelessWidget {
  const InboxItem(
      {Key? key,
      required this.topic,
      required this.lastMessage,
      required this.lastUpdate,
      required this.members,
      required this.onTap})
      : super(key: key);

  final String topic;
  final String lastMessage;
  final DateTime lastUpdate;
  final String members;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      isThreeLine: true,
      title: Row(
        children: [
          Expanded(child: Text(topic)),
          Text(lastUpdate.toMMMEd()),
        ],
      ),
      subtitle: Row(
        children: [
          Flexible(
              child: Text(
            '$lastMessage\nParticipants: $members',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )),
        ],
      ),
    );
  }
}
