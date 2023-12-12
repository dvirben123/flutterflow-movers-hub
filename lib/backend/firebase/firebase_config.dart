import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCobzIhLO64DJgcZtvVNGCo-vcQT1d-v1k",
            authDomain: "movers-hub-mobile.firebaseapp.com",
            projectId: "movers-hub-mobile",
            storageBucket: "movers-hub-mobile.appspot.com",
            messagingSenderId: "149362612275",
            appId: "1:149362612275:web:e2d5a8288c9a2865ccab46",
            measurementId: "G-JTTB4F0F54"));
  } else {
    await Firebase.initializeApp();
  }
}
