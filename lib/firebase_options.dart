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
    apiKey: 'AIzaSyBiBB_MV7F7sETZVVZ0HJp_YRvEwb5KkVU',
    appId: '1:426121446164:android:59b244918ad3f02c277801',
    messagingSenderId: '426121446164',
    projectId: 'askia-farms',
    storageBucket: 'askia-farms.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDxyvYKTd1khkTkdxszWvdF6DinS5YUTI',
    appId: '1:426121446164:ios:41b1ae8fae1674ff277801',
    messagingSenderId: '426121446164',
    projectId: 'askia-farms',
    storageBucket: 'askia-farms.appspot.com',
    androidClientId: '426121446164-6fqbbku2blc7hnqkio6p6tnuvqelrf3v.apps.googleusercontent.com',
    iosClientId: '426121446164-e1ar9ogddi8ndboe913q28o0nuhrmnlm.apps.googleusercontent.com',
    iosBundleId: 'com.askia.farms',
  );
}
