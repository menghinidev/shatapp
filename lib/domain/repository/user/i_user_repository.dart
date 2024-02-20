import 'package:shatapp/domain/model/user/shatappuser.dart';

abstract class IUserRepository {
  Future<ShatAppUser> getUserById(String userId);
  Future<List<ShatAppUser>> getShatAppCommunity();
}

abstract class IAuthRepository {
  Future<void> login(ShatAppUser user);
  Future<void> logout();
}
