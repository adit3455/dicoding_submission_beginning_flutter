import 'package:intl/intl.dart';

class AllConfig {
  String get checkTimeNow {
    final hour = int.parse(DateFormat.H().format(DateTime.now()));
    if (hour >= 6 && hour <= 10) {
      return "Morning";
    } else if (hour >= 10 && hour <= 18) {
      return "Afternoon";
    } else {
      return "Night";
    }
  }
}
