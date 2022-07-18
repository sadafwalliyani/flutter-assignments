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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDGXQZh24VNGg-1eronFsmvi5hhKwb70P4',
    appId: '1:918387279717:web:eacedbc4a430fa43fe438c',
    messagingSenderId: '918387279717',
    projectId: 'signinsignout',
    authDomain: 'signinsignout.firebaseapp.com',
    storageBucket: 'signinsignout.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5-HDQLYCpKAhhAPkIL1lmaLxslnXxe84',
    appId: '1:918387279717:android:9d8ea121e9fcf32afe438c',
    messagingSenderId: '918387279717',
    projectId: 'signinsignout',
    storageBucket: 'signinsignout.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjX5taRIEwMdxi0TKk0_lT3t32LhjBLbI',
    appId: '1:918387279717:ios:6b63b206a6833b38fe438c',
    messagingSenderId: '918387279717',
    projectId: 'signinsignout',
    storageBucket: 'signinsignout.appspot.com',
    iosClientId: '918387279717-16595tjpfmgc6ot9vvu7sbiamlc62i6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginScreen',
  );
}
