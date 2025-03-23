import 'package:numguess_server/src/generated/user.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class GetUserDataEndpoint extends Endpoint {
  Future<User?> getUserData(Session session, UserInfo? userInfo) async {
    final authenticatedUID = (await session.authenticated)?.userId;
    if (authenticatedUID == null && userInfo == null) return null;
    final request = await User.db.findFirstRow(session,
        where: (p0) => p0.userInfoId.equals(userInfo?.id ?? authenticatedUID),
        include: User.include(userInfo: UserInfo.include()));
    return request;
  }
}
