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
    apiKey: 'AIzaSyDkEbBFnMldsyW9E-BGuTlgKC3pPYVnsLw',
    appId: '1:155990510784:web:e6439565c671404bb2b125',
    messagingSenderId: '155990510784',
    projectId: 'ayeshaayesha',
    authDomain: 'ayeshaayesha.firebaseapp.com',
    storageBucket: 'ayeshaayesha.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCRqTNIr9uGBPch-WBwLcj5KWKPhTMpZ0',
    appId: '1:155990510784:android:0cc6b788c8052ebeb2b125',
    messagingSenderId: '155990510784',
    projectId: 'ayeshaayesha',
    storageBucket: 'ayeshaayesha.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmX1LtFr4v0B18OZSQhks7wfivmC4NAUI',
    appId: '1:155990510784:ios:f5ff8915bbc435d9b2b125',
    messagingSenderId: '155990510784',
    projectId: 'ayeshaayesha',
    storageBucket: 'ayeshaayesha.appspot.com',
    iosClientId: '155990510784-897371f372fk4h88o918ehqgpr70ea7q.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmX1LtFr4v0B18OZSQhks7wfivmC4NAUI',
    appId: '1:155990510784:ios:f5ff8915bbc435d9b2b125',
    messagingSenderId: '155990510784',
    projectId: 'ayeshaayesha',
    storageBucket: 'ayeshaayesha.appspot.com',
    iosClientId: '155990510784-897371f372fk4h88o918ehqgpr70ea7q.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );
}
