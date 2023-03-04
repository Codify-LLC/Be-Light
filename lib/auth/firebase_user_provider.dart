import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BeLight4FirebaseUser {
  BeLight4FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BeLight4FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BeLight4FirebaseUser> beLight4FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BeLight4FirebaseUser>(
      (user) {
        currentUser = BeLight4FirebaseUser(user);
        return currentUser!;
      },
    );
