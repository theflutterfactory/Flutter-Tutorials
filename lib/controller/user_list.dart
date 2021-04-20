import 'package:CWCFlutter/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListController extends StateNotifier<List<User>> {
  UserListController() : super([]);

  addUser(User user) {
    state = [...state, user];
  }

  deleteUser(User user) {
    state = state.where((_user) => _user.name != user.name).toList();
  }
}
