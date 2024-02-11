import 'package:flutter/material.dart';

extension DateTimeFeatures on DateTime {
  List<DateTime> get thisWeek {
    final today = DateTime.now().today;
    final weekDay = today.weekday;
    const fridayWeekDayIndex = DateTime.saturday;
    return List.generate(fridayWeekDayIndex - weekDay, today.addSafeDays);
  }

  List<DateTime> get nextWeek {
    return List.generate(5, (index) => nextMonday.addSafeDays(index));
  }

  DateTime get startOfYear => DateTime(DateTime.now().year);
  DateTime get startOfLastMonth {
    final now = DateTime.now();
    if (now.month == 1) {
      return DateTime(DateTime.now().year - 1, 12);
    }
    return DateTime(DateTime.now().year, DateTime.now().month - 1);
  }

  DateTime addSafeDays(int days) {
    var newValue = add(Duration(days: days));
    if (newValue.hour == 23) newValue = newValue.add(const Duration(hours: 1));
    if (newValue.hour == 1) newValue = newValue.subtract(const Duration(hours: 1));
    return newValue;
  }

  DateTime subtractSafeDays(int days) {
    var newValue = subtract(Duration(days: days));
    if (newValue.hour == 23) newValue = newValue.add(const Duration(hours: 1));
    if (newValue.hour == 1) newValue = newValue.subtract(const Duration(hours: 1));
    return newValue;
  }

  DateTime get endOfLastMonth {
    final now = DateTime.now();
    final currentMonth = now.month;
    if (currentMonth == DateTime.january) return DateTime(now.year - 1, 12, 31);
    var cursor = now;
    var cursorMonth = cursor.month;
    do {
      final newCursor = cursor.subtractSafeDays(1);
      cursor = newCursor;
      cursorMonth = cursor.month;
    } while (cursorMonth == month);
    return cursor;
  }

  DateTime get today {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day);
    return start;
  }

  DateTime get tomorrow {
    final value = DateTime.now().addSafeDays(1);
    final start = DateTime(value.year, value.month, value.day);
    return start;
  }

  DateTime get thisMonday {
    final today = DateTime.now().today;
    if (today.weekday == DateTime.monday) return today;
    final value = today.subtractSafeDays(today.weekday - 1);
    return value;
  }

  DateTime get nextMonday {
    final today = DateTime.now().today;
    var start = DateTime(today.year, today.month, today.day);
    if (start.weekday == DateTime.monday) start = start.addSafeDays(7);
    while (start.weekday != DateTime.monday) {
      start = start.addSafeDays(1);
    }
    return start;
  }

  DateTime get defaultMorningStart {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 8);
  }

  DateTime get defaultMorningEnd {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 13);
  }

  DateTime get defaultAfternoonStart {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 14);
  }

  DateTime get defaultAfternoonEnd {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 18);
  }

  bool get isToday {
    final normalized = DateTime(year, month, day);
    return normalized == today;
  }

  List<DateTime> flat(DateTime to) {
    final difference = to.difference(this);
    final inDays = (difference.inHours / 24).round();
    final generated = List.generate(inDays, addSafeDays);
    return generated;
  }
}

extension TimeOfDayFeature on TimeOfDay {
  bool isAtTheSameTime(TimeOfDay time) {
    final thisAsDate = withDate();
    final otherAsDate = time.withDate();
    return thisAsDate.isAtSameMomentAs(otherAsDate);
  }

  bool isAfter(TimeOfDay other) {
    final datetime = withDate();
    final otherDatetime = other.withDate();
    return datetime.isAfter(otherDatetime);
  }

  bool isBefore(TimeOfDay other) {
    final datetime = withDate();
    final otherDatetime = other.withDate();
    return datetime.isBefore(otherDatetime);
  }

  TimeOfDay add(Duration duration) {
    final toDateTime = withDate();
    return TimeOfDay.fromDateTime(toDateTime.add(duration));
  }

  TimeOfDay addWithLimit(Duration duration, TimeOfDay limit) {
    final toDateTime = withDate();
    final value = TimeOfDay.fromDateTime(toDateTime.add(duration));
    if (value.isAfter(limit)) return limit;
    return value;
  }

  TimeOfDay subtract(Duration duration) {
    final toDateTime = withDate();
    return TimeOfDay.fromDateTime(toDateTime.subtract(duration));
  }

  TimeOfDay get roundNextHour => add(const Duration(hours: 1)).replacing(minute: 0);

  DateTime withDate({DateTime? date}) => DateTime(
        (date ?? DateTime.now()).year,
        (date ?? DateTime.now()).month,
        (date ?? DateTime.now()).day,
        hour,
        minute,
      );
}
