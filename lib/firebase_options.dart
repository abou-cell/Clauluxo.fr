// Generated for the Clauluxo Spark Web prototype.
// Android and iOS options will be added by FlutterFire when their app IDs are registered.
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    throw UnsupportedError('Firebase options are not configured for this platform yet.');
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDH6uyUh3ea1XZuthpo88f3IvVsUzb85kE',
    appId: '1:637720594474:web:a249626dbbc456b8039b53',
    messagingSenderId: '637720594474',
    projectId: 'clauluxo-c5de9',
    authDomain: 'clauluxo-c5de9.firebaseapp.com',
    storageBucket: 'clauluxo-c5de9.firebasestorage.app',
    measurementId: 'G-TGECZB7ZWY',
  );
}
