import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/domain/enum/shit_severity_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/stats/stats.dart';
import 'package:shatapp/domain/repository/i_shit_repository.dart';

final mockShitRepository = Provider<ShitRepository>((ref) => MockShitRepository());

class MockShitRepository implements ShitRepository {
  @override
  Future<List<Shit>> getShits() async {
    return _shits;
  }

  @override
  Future<void> registerShit({required ShitSeverity severity}) async {
    _shits.add(
      Shit(
        id: (_shits.length + 1).toString(),
        userId: 'me',
        creationDateTime: DateTime.now(),
        severity: severity,
      ),
    );
  }

  @override
  Future<Stats> getStats() async {
    final shitsByDate = <DateTime, List<Shit>>{};
    for (final shit in _shits) {
      final date = DateTime(
        shit.creationDateTime.year,
        shit.creationDateTime.month,
        shit.creationDateTime.day,
      );
      shitsByDate.update(
        date,
        (value) => value..add(shit),
        ifAbsent: () => [shit],
      );
    }
    final shittestDayOrderedList = shitsByDate.entries.toList()
      ..sort(
        (a, b) => a.value.length.compareTo(b.value.length),
      );
    return Stats(
      totalCount: _shits.length,
      averageSeverity: ShitSeverity.values[(_shits.fold(
                0,
                (previousValue, element) => previousValue + ShitSeverity.values.indexOf(element.severity),
              ) /
              _shits.length)
          .ceil()],
      shittiestDay: shittestDayOrderedList.firstOrNull?.key,
      shittiestDayCount: shittestDayOrderedList.firstOrNull?.value.length,
    );
  }

  static final _shits = [
    Shit(
      id: '1',
      userId: 'me',
      creationDateTime: DateTime(2024, 2, 10),
      severity: ShitSeverity.likeAPiss,
    ),
    Shit(
      id: '2',
      userId: 'me',
      creationDateTime: DateTime(2024, 2, 2),
      severity: ShitSeverity.almostFaint,
    ),
    Shit(
      id: '3',
      userId: 'me',
      creationDateTime: DateTime(2024, 1, 28),
      severity: ShitSeverity.hard,
    ),
  ];
}
