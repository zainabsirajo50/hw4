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
    apiKey: 'AIzaSyAoapY6gZ2a2Fnnx-URt4n7GD58Ec0xu7A',
    appId: '1:464092683396:web:334b331e2a7f11209336d1',
    messagingSenderId: '464092683396',
    projectId: 'csc-4360-hw4',
    authDomain: 'csc-4360-hw4.firebaseapp.com',
    storageBucket: 'csc-4360-hw4.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoq8VypgfVFsIEHw73MYPS8I37QlI5Xtw',
    appId: '1:464092683396:android:3f2934fed6e770369336d1',
    messagingSenderId: '464092683396',
    projectId: 'csc-4360-hw4',
    storageBucket: 'csc-4360-hw4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9YJb23Ow-d112p92rA8vIGCBdNFaiyUg',
    appId: '1:464092683396:ios:12b2649c987b65999336d1',
    messagingSenderId: '464092683396',
    projectId: 'csc-4360-hw4',
    storageBucket: 'csc-4360-hw4.firebasestorage.app',
    iosBundleId: 'com.example.hw5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9YJb23Ow-d112p92rA8vIGCBdNFaiyUg',
    appId: '1:464092683396:ios:12b2649c987b65999336d1',
    messagingSenderId: '464092683396',
    projectId: 'csc-4360-hw4',
    storageBucket: 'csc-4360-hw4.firebasestorage.app',
    iosBundleId: 'com.example.hw5',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAoapY6gZ2a2Fnnx-URt4n7GD58Ec0xu7A',
    appId: '1:464092683396:web:05bfae5b96ea601d9336d1',
    messagingSenderId: '464092683396',
    projectId: 'csc-4360-hw4',
    authDomain: 'csc-4360-hw4.firebaseapp.com',
    storageBucket: 'csc-4360-hw4.firebasestorage.app',
  );
}
