import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD0AWWgj-xgyzTqL8GSZH5J2-98fb8vLtU",
            authDomain: "be-light-b9fad.firebaseapp.com",
            projectId: "be-light-b9fad",
            storageBucket: "be-light-b9fad.appspot.com",
            messagingSenderId: "527264962266",
            appId: "1:527264962266:web:0fd0a9b58eee1ee10a37e3",
            measurementId: "G-W27ZKEP7WL"));
  } else {
    await Firebase.initializeApp();
  }
}
