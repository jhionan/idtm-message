import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'feature/message_module/inbox/presenter/inbox_provider.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      MaterialApp(theme: appTheme, home: const InboxProvider());
}
