import 'package:intl/intl.dart';

class HelperFuctions {
  static String dateDisplayFormate(DateTime date) {
    return DateFormat.MMMd().format(date);
  }

  static String dateSendFormate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
