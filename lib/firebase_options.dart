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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhP7zyg1lXOpKCr3fs6qSnLpH9YgOQ5V8',
    appId: '1:70317192204:android:1c17538f6118f42c25aa29',
    messagingSenderId: '70317192204',
    projectId: 'dev-mate-d93d0',
    storageBucket: 'dev-mate-d93d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOqbNAX1SiL6IvQjoQXkgibz_qxkBNc6g',
    appId: '1:70317192204:ios:09b3658f5712189c25aa29',
    messagingSenderId: '70317192204',
    projectId: 'dev-mate-d93d0',
    storageBucket: 'dev-mate-d93d0.appspot.com',
    androidClientId: '70317192204-t7e74injdcjgm5r9klpea7al4ta3uk7c.apps.googleusercontent.com',
    iosClientId: '70317192204-d7race7eg7mau95rkso9kfjei8hocg6r.apps.googleusercontent.com',
    iosBundleId: 'com.example.devMate',
  );
}
