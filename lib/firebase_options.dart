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
    apiKey: 'AIzaSyBpBQ6s1-MC8jzZCc_Nc1kxeDBhlj1NI-k',
    appId: '1:491945200189:web:9ec9dda529519852263854',
    messagingSenderId: '491945200189',
    projectId: 'doc-doc-app-distribution-42273',
    authDomain: 'doc-doc-app-distribution-42273.firebaseapp.com',
    storageBucket: 'doc-doc-app-distribution-42273.appspot.com',
    measurementId: 'G-XVKT7B83GV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbSDiBrTjQz6h0szO2I0DaFryEabAZS7I',
    appId: '1:491945200189:android:e54679fc5e7382ba263854',
    messagingSenderId: '491945200189',
    projectId: 'doc-doc-app-distribution-42273',
    storageBucket: 'doc-doc-app-distribution-42273.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPAldvUe2q1U0xJmyT8dC3qgzofA6BrFA',
    appId: '1:491945200189:ios:847a281199c117c5263854',
    messagingSenderId: '491945200189',
    projectId: 'doc-doc-app-distribution-42273',
    storageBucket: 'doc-doc-app-distribution-42273.appspot.com',
    iosBundleId: 'com.example.advancedFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPAldvUe2q1U0xJmyT8dC3qgzofA6BrFA',
    appId: '1:491945200189:ios:847a281199c117c5263854',
    messagingSenderId: '491945200189',
    projectId: 'doc-doc-app-distribution-42273',
    storageBucket: 'doc-doc-app-distribution-42273.appspot.com',
    iosBundleId: 'com.example.advancedFlutterApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBpBQ6s1-MC8jzZCc_Nc1kxeDBhlj1NI-k',
    appId: '1:491945200189:web:4d9b04b19306cc4f263854',
    messagingSenderId: '491945200189',
    projectId: 'doc-doc-app-distribution-42273',
    authDomain: 'doc-doc-app-distribution-42273.firebaseapp.com',
    storageBucket: 'doc-doc-app-distribution-42273.appspot.com',
    measurementId: 'G-YQYKSQBCKP',
  );
}
