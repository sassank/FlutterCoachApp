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
    apiKey: 'AIzaSyAF0FRAvZTI1yV-TNhhF9cCx37swU1YvU0',
    appId: '1:203559158951:web:13dde69c7b1aaca95d8782',
    messagingSenderId: '203559158951',
    projectId: 'gocoachapp-d882a',
    authDomain: 'gocoachapp-d882a.firebaseapp.com',
    storageBucket: 'gocoachapp-d882a.appspot.com',
    measurementId: 'G-MP35SN2C6B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqiLZ2Up9rHzsF61DRYSnAxUZ2WKMzsp8',
    appId: '1:203559158951:android:430d20f912f45af75d8782',
    messagingSenderId: '203559158951',
    projectId: 'gocoachapp-d882a',
    storageBucket: 'gocoachapp-d882a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPWdeoEPwQhZBbREjOshghEBKPzgX-4Z4',
    appId: '1:203559158951:ios:3cddb4b83759b36a5d8782',
    messagingSenderId: '203559158951',
    projectId: 'gocoachapp-d882a',
    storageBucket: 'gocoachapp-d882a.appspot.com',
    iosBundleId: 'com.example.coachingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPWdeoEPwQhZBbREjOshghEBKPzgX-4Z4',
    appId: '1:203559158951:ios:3cddb4b83759b36a5d8782',
    messagingSenderId: '203559158951',
    projectId: 'gocoachapp-d882a',
    storageBucket: 'gocoachapp-d882a.appspot.com',
    iosBundleId: 'com.example.coachingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAF0FRAvZTI1yV-TNhhF9cCx37swU1YvU0',
    appId: '1:203559158951:web:47ec252a4fc20ca85d8782',
    messagingSenderId: '203559158951',
    projectId: 'gocoachapp-d882a',
    authDomain: 'gocoachapp-d882a.firebaseapp.com',
    storageBucket: 'gocoachapp-d882a.appspot.com',
    measurementId: 'G-3E355HRRFH',
  );
}