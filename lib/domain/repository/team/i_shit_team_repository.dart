import 'package:shatapp/domain/model/shit_team/shitteam.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';

abstract class IShitTeamRepository {
  Future<void> createShitTeam({
    required String name,
    List<ShatAppUser> members,
  });

  Future<List<ShitTeam>> myShitTeams();
  Future<ShitTeam?> myShitTeam(String teamId);

  Future<void> removeShitTeam(ShitTeam team);
}
