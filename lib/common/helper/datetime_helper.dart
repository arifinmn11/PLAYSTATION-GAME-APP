import 'package:playstation_games_app/dependencies/dependencies_export.dart';

String formatDateTimeText(DateTime date) {
  var string = DateFormat.yMMMMd('en').format(date);
  return string;
}

String yearsMonthDay(DateTime date){
  return DateFormat('yyyy-MM-dd').format(date);
}
