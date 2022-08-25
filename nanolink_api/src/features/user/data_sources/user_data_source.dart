import 'package:nanolink_core/nanolink_core.dart';

import '../use_cases/get_current_user_use_case.dart';

class UserDataSourceImpl implements UserDataSource {
  UserDataSourceImpl(this._getCurrentUserUseCase);

  final GetCurrentUserUseCase _getCurrentUserUseCase;

  @override
  Future<User> getCurrentUser(String jwt) {
    return _getCurrentUserUseCase.run(jwt);
  }
}
