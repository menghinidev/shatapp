import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'datetimeinterval.freezed.dart';

@freezed
class DateTimeInterval with _$DateTimeInterval {
  factory DateTimeInterval({
    DateTime? from,
    DateTime? to,
  }) = _DateTimeInterval;
}

@freezed
class TimeOfDayInterval with _$TimeOfDayInterval {
  factory TimeOfDayInterval({
    TimeOfDay? from,
    TimeOfDay? to,
  }) = _TimeOfDayInterval;
}

extension DateTimeIntervalFeatures on DateTimeInterval {
  bool get isBounded => from != null && to != null;
  bool get hasFrom => from != null;
  bool get hasTo => to != null;
}

extension TimeOfDayIntervalFeatures on TimeOfDayInterval {
  bool get isBounded => from != null && to != null;
  bool get hasFrom => from != null;
  bool get hasTo => to != null;
}
