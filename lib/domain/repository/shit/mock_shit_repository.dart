import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/repository/shit/i_shit_repository.dart';

class MockShitRepository implements ShitRepository {
  @override
  Future<List<Shit>> getMyShitDiary() async {
    return _shits;
  }

  @override
  Future<Shit?> registerShit({
    required ShitEffort effort,
    required ShitConsistency consistency,
    ShitTeam? team,
    String? color,
    String? note,
  }) async {
    _shits.add(
      Shit(
        id: (_shits.length + 1).toString(),
        creationDateTime: DateTime.now(),
        consistency: consistency,
        effort: effort,
        note: note,
      ),
    );
    return null;
  }

  static final _shits = [
    Shit(
      id: '1',
      creationDateTime: DateTime(2024, 2, 10),
      consistency: ShitConsistency.cement,
      effort: ShitEffort.legendary,
      note: 'asasda dads',
    ),
    Shit(
      id: '2',
      creationDateTime: DateTime(2024, 2, 2),
      consistency: ShitConsistency.normal,
      effort: ShitEffort.legendary,
    ),
    Shit(
      id: '3',
      creationDateTime: DateTime(2024, 1, 28),
      consistency: ShitConsistency.cement,
      effort: ShitEffort.legendary,
    ),
    Shit(
      id: '4',
      creationDateTime: DateTime(2024, 1, 28),
      consistency: ShitConsistency.liquid,
      effort: ShitEffort.easy,
    ),
  ];

  @override
  Future<List<Shit>> getCommunityShitDiary() {
    // TODO(mengo): implement getGlobalShit
    throw UnimplementedError();
  }

  @override
  Future<void> removeShit(String shitId) {
    // TODO(mengo): implement removeShit
    throw UnimplementedError();
  }

  @override
  Future<List<Shit>> getTeamShitDiary(String teamId) {
    // TODO(mengo): implement getTeamShitDiary
    throw UnimplementedError();
  }
}
