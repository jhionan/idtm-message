import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String toMMMEd() {
    DateFormat formater = DateFormat.MMMEd();
    return formater.format(this);
  }
}
