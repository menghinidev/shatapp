import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shatapp/utils/datetime/datetime_extension.dart';

mixin DateFormatter {
  String formatTimeOfDay(TimeOfDay time) => DateFormat.jm().format(time.withDate());

  String formatDateTime(DateTime dateTime) => DateFormat('dd/MM/yyyy hh:mm').format(dateTime.toLocal());
  String formatDate(DateTime dateTime) => DateFormat.yMMMMd().format(dateTime.toLocal());
  String formatDateWithSlash(DateTime dateTime) => DateFormat('dd/MM').format(dateTime.toLocal());
  String formatWeekDay(DateTime dateTime) => DateFormat.EEEE().format(dateTime.toLocal());
  String formatDateNumber(DateTime dateTime) => DateFormat.d().format(dateTime.toLocal());
  String formatMonth(DateTime dateTime) => DateFormat.MMMM().format(dateTime.toLocal());

  String formatDayMonth(DateTime dateTime) => DateFormat.MMMMd().format(dateTime.toLocal());
  String formatTimeInDay(DateTime dateTime) => DateFormat.Hm().format(dateTime.toLocal());

  String capitalizeFirstLetter(String value) => toBeginningOfSentenceCase(value) ?? '';
  String formatDateDDMMYYYY(DateTime dateTime) => DateFormat('dd/MM/yyyy').format(dateTime.toLocal());

  String formatWeekDayFromIndex(int index) => DateFormat.EEEE()
      .format(DateTime.now().subtract(Duration(days: DateTime.now().weekday)).add(Duration(days: index)));
}
