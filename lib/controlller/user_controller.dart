import 'package:CWCFlutter/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final companyProvider = Provider<String>((_) => 'Cheetah Coding');

class UserController extends StateNotifier<User> {
  UserController(User state) : super(state);
}
