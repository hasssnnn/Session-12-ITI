import 'dart:math';

import 'package:flutter/material.dart'
    show
        BuildContext,
        Navigator,
        NavigatorState,
        ScaffoldMessenger,
        ScaffoldMessengerState,
        TextTheme,
        Theme;
import 'package:intl/intl.dart';

extension ListExtension<T> on List<T> {
  T get random => this[Random().nextInt(length)];
}

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  NavigatorState get navigator => Navigator.of(this); //Extra

  ScaffoldMessengerState get scaffoldMessenger =>
      ScaffoldMessenger.of(this); //Extra
}
//  Navigator.of(this) = Navigator.of(context);

extension DateExtension on DateTime? {
  String getFormatedDate() {
    // initializeDateFormatting("ar_SA");//Extra
    // var shadow = this;
    // if(shadow == null) return "";//Guarding against null
    // return DateFormat.yMMMd().format(shadow);

    if (this == null) return ""; //Guarding against null
    // return DateFormat.yMMMd("ar_SA").add_jm().format(this!); //null assertion !
    return DateFormat.yMMMd().add_jm().format(this!); //null assertion !
  }
}

extension DurationExtension on Duration? {
  String getFormatedDuration() {
    if (this == null) return ""; //Guarding against null
    var dumyDate = DateTime(2024, 1, 1, 0, 0, 0).add(this!);
    return DateFormat.Hms().format(dumyDate);
  }
}


//KG1
// String formatDate(DateTime time){

// }