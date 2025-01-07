import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBDzLmwdM5wf55sbdwAZn7XvndGc_KbYJI",
            authDomain: "dawa2y-l7a0e4.firebaseapp.com",
            projectId: "dawa2y-l7a0e4",
            storageBucket: "dawa2y-l7a0e4.firebasestorage.app",
            messagingSenderId: "755306893501",
            appId: "1:755306893501:web:ccae00b279cc9b790de7d4"));
  } else {
    await Firebase.initializeApp();
  }
}
