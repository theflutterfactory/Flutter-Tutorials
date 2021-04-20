import 'package:CWCFlutter/api/cheetah_api.dart';
import 'package:CWCFlutter/controller/user_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final channelNameProvider = Provider<String>(
  (_) => "Cheetah Coding",
);

final profileNameProvider = FutureProvider<String>(
  (_) => getProfileUserName(),
);

final sessionTimeProvider = StreamProvider<int>(
  (_) => getSessionTime(),
);

final userListProvider = StateNotifierProvider(
  (_) => UserListController(),
);
