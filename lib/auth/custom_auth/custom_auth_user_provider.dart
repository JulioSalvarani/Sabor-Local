import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class SaborLocalAuthUser {
  SaborLocalAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsersStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SaborLocalAuthUser> saborLocalAuthUserSubject =
    BehaviorSubject.seeded(SaborLocalAuthUser(loggedIn: false));
Stream<SaborLocalAuthUser> saborLocalAuthUserStream() =>
    saborLocalAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
