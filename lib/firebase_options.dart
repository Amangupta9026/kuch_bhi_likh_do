// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCn9i03jIUCcwqcBqLDBOPGsmRHOm-A5nE',
    appId: '1:341669906363:web:88e23dae83b47ee2f2269e',
    messagingSenderId: '341669906363',
    projectId: 'kuch-bhi-likh-do',
    authDomain: 'kuch-bhi-likh-do.firebaseapp.com',
    storageBucket: 'kuch-bhi-likh-do.appspot.com',
    measurementId: 'G-P82VR8ZJND',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAswfJY0UhhiIZCF4tRiQPgRFO1Qd3b8ak',
    appId: '1:341669906363:android:60dd15f9a14a35def2269e',
    messagingSenderId: '341669906363',
    projectId: 'kuch-bhi-likh-do',
    storageBucket: 'kuch-bhi-likh-do.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhZwDHGVKZsW6qiRjXaWFHhDZAsOnP6Rk',
    appId: '1:341669906363:ios:abdf51f78b47875cf2269e',
    messagingSenderId: '341669906363',
    projectId: 'kuch-bhi-likh-do',
    storageBucket: 'kuch-bhi-likh-do.appspot.com',
    iosBundleId: 'com.example.kuchBhiLikhDo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDhZwDHGVKZsW6qiRjXaWFHhDZAsOnP6Rk',
    appId: '1:341669906363:ios:3ea02554f968b4a9f2269e',
    messagingSenderId: '341669906363',
    projectId: 'kuch-bhi-likh-do',
    storageBucket: 'kuch-bhi-likh-do.appspot.com',
    iosBundleId: 'com.example.kuchBhiLikhDo.RunnerTests',
  );
}