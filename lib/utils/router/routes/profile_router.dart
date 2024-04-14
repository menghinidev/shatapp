import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shatapp/domain/model/shit/shit.dart';
import 'package:shatapp/domain/model/user/shatappuser.dart';
import 'package:shatapp/pages/profile/shit_profile_page.dart';

class ProfilePageRoute extends GoRoute {
  ProfilePageRoute()
      : super(
          path: pagePath,
          redirect: (context, state) => state.extra == null ? '/' : null,
          builder: (context, state) {
            final content = state.extra! as Map<String, dynamic>;
            final user = content['user'] as ShatAppUser;
            final shits = content['shits'] as List<Shit>;
            return ShitUserProfilePage(
              user: user,
              globalShits: shits,
            );
          },
        );
  static String pagePath = 'user';
}

extension ProfileRouting on BuildContext {
  void goToProfile(ShatAppUser user, {List<Shit>? data}) => go(
        '/${ProfilePageRoute.pagePath}',
        extra: {
          'user': user,
          'shits': data,
        },
      );
}
