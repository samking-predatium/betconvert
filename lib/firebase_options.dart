// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAw1aHqzEkNqxTpQuHBq54KtsvOO5EXHlk',
    appId: '1:218516086071:web:44477eba5ab77fc9b38eb2',
    messagingSenderId: '218516086071',
    projectId: 'betconvert-46642',
    authDomain: 'betconvert-46642.firebaseapp.com',
    storageBucket: 'betconvert-46642.firebasestorage.app',
    measurementId: 'G-8MKEB21Z6R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDd1MXaJEscUmwrEQNtXP2xzcd172xEuNI',
    appId: '1:218516086071:android:0d54d0c0405aa313b38eb2',
    messagingSenderId: '218516086071',
    projectId: 'betconvert-46642',
    storageBucket: 'betconvert-46642.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPaiZ93nbhb2pSL7gFBt4nuC8sq0KoWHs',
    appId: '1:218516086071:ios:8c2dc26ce6333591b38eb2',
    messagingSenderId: '218516086071',
    projectId: 'betconvert-46642',
    storageBucket: 'betconvert-46642.firebasestorage.app',
    iosBundleId: 'com.lesquatro.betconvert',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPaiZ93nbhb2pSL7gFBt4nuC8sq0KoWHs',
    appId: '1:218516086071:ios:d6ae2bf76105cef6b38eb2',
    messagingSenderId: '218516086071',
    projectId: 'betconvert-46642',
    storageBucket: 'betconvert-46642.firebasestorage.app',
    iosBundleId: 'com.example.betconvert',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAw1aHqzEkNqxTpQuHBq54KtsvOO5EXHlk',
    appId: '1:218516086071:web:d482f7cde2d91910b38eb2',
    messagingSenderId: '218516086071',
    projectId: 'betconvert-46642',
    authDomain: 'betconvert-46642.firebaseapp.com',
    storageBucket: 'betconvert-46642.firebasestorage.app',
    measurementId: 'G-49RME0G3Y1',
  );
}
