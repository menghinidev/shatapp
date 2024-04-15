import 'package:shatapp/domain/enum/shit_consistency_enum.dart';
import 'package:shatapp/domain/enum/shit_effort_enum.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/shit_team/shitteam.dart';

abstract class ShitRepository {
  Future<List<Shit>> getMyShitDiary();
  Future<List<Shit>> geUserShitDiary(String userId);
  Future<List<Shit>> getTeamShitDiary(String teamId);
  Future<List<Shit>> getCommunityShitDiary();

  Future<Shit?> registerShit({
    required ShitEffort effort,
    required ShitConsistency consistency,
    ShitTeam? team,
    String? note,
    String? color,
  });

  Future<void> reactToShit({
    required String shitId,
    required ShitReaction reaction,
  });

  Future<void> removeShit(String shitId);
}
