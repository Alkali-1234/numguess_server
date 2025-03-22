import 'package:numguess_server/src/generated/user.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class CreateUserDataEndpoint extends Endpoint {
  Future<User> createUserData(Session session, UserInfo userInfo) async {
    final row = User(userInfoId: userInfo.id!, userInfo: userInfo, games: []);
    final userRequest = await User.db.insertRow(session, row);
    return userRequest;
  }
}
