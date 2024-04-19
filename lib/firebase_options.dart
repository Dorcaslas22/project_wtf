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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRd4H1v21_nDKnojKbKoxWiyQbpyCRHFU',
    appId: '1:622076477565:ios:6a68f97075a562a21c3114',
    messagingSenderId: '622076477565',
    projectId: 'projectwtf-fef2f',
    storageBucket: 'projectwtf-fef2f.appspot.com',
    androidClientId: '622076477565-7b1qca20fckd9euia3o2hfh6fa4rve7d.apps.googleusercontent.com',
    iosClientId: '622076477565-k9pt4rpcll0lcdb7jo0j8nq7etagqc0v.apps.googleusercontent.com',
    iosBundleId: 'com.dorcas.projectWtf',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjiGxyZMToZ5S2lgjW309qKvp1VmRcME4',
    appId: '1:622076477565:android:2b33bc69b809180f1c3114',
    messagingSenderId: '622076477565',
    projectId: 'projectwtf-fef2f',
    storageBucket: 'projectwtf-fef2f.appspot.com',
  );

}