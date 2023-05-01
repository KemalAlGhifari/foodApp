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
    apiKey: 'AIzaSyBHWocZAGIztyuYxQxpd_pkOWmXUfkrBh4',
    appId: '1:697574848993:web:1243ccd6e52c0f0d6efaa0',
    messagingSenderId: '697574848993',
    projectId: 'foodapp-9c70f',
    authDomain: 'foodapp-9c70f.firebaseapp.com',
    storageBucket: 'foodapp-9c70f.appspot.com',
    measurementId: 'G-KFCYLYY00P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASkj-Izhv4W7rR-WcWfLCmFAg5IOdKffY',
    appId: '1:697574848993:android:36810c1aff3777a86efaa0',
    messagingSenderId: '697574848993',
    projectId: 'foodapp-9c70f',
    storageBucket: 'foodapp-9c70f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFmvj1P-28-ruRq3VGfJDy-HHUqgxGkwM',
    appId: '1:697574848993:ios:d2ee460bec1bb2296efaa0',
    messagingSenderId: '697574848993',
    projectId: 'foodapp-9c70f',
    storageBucket: 'foodapp-9c70f.appspot.com',
    iosClientId: '697574848993-ph92ptu8phkbhqqni9sq8vg0m3b590k1.apps.googleusercontent.com',
    iosBundleId: 'com.example.tugasmokeup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFmvj1P-28-ruRq3VGfJDy-HHUqgxGkwM',
    appId: '1:697574848993:ios:d2ee460bec1bb2296efaa0',
    messagingSenderId: '697574848993',
    projectId: 'foodapp-9c70f',
    storageBucket: 'foodapp-9c70f.appspot.com',
    iosClientId: '697574848993-ph92ptu8phkbhqqni9sq8vg0m3b590k1.apps.googleusercontent.com',
    iosBundleId: 'com.example.tugasmokeup',
  );
}