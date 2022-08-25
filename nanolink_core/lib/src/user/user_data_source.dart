import 'package:nanolink_core/nanolink_core.dart';

abstract class UserDataSource {
  Future<User> getCurrentUser(String jwt);
}
