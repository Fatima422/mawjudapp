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
    apiKey: 'AIzaSyAAV9X8OLJHWOJWmD9-AhFPYNvn8i9RKFc',
    appId: '1:153662808794:web:1851cb9e742bf96aedfbe3',
    messagingSenderId: '153662808794',
    projectId: 'mawjudfirebase',
    authDomain: 'mawjudfirebase.firebaseapp.com',
    databaseURL: 'https://mawjudfirebase-default-rtdb.firebaseio.com',
    storageBucket: 'mawjudfirebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-C_lsyjFNjhBxIQTY_xtd-W6raKLXSNs',
    appId: '1:153662808794:android:28508a13fea37a55edfbe3',
    messagingSenderId: '153662808794',
    projectId: 'mawjudfirebase',
    databaseURL: 'https://mawjudfirebase-default-rtdb.firebaseio.com',
    storageBucket: 'mawjudfirebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8c0vtdjTCnSargqgqeeSKUaPi-vXpkRQ',
    appId: '1:153662808794:ios:a408f37814696e4dedfbe3',
    messagingSenderId: '153662808794',
    projectId: 'mawjudfirebase',
    databaseURL: 'https://mawjudfirebase-default-rtdb.firebaseio.com',
    storageBucket: 'mawjudfirebase.appspot.com',
    iosClientId: '153662808794-ee5nid58p6m92qe1gqeeg53cntg9ogl4.apps.googleusercontent.com',
    iosBundleId: 'com.example.arb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8c0vtdjTCnSargqgqeeSKUaPi-vXpkRQ',
    appId: '1:153662808794:ios:a408f37814696e4dedfbe3',
    messagingSenderId: '153662808794',
    projectId: 'mawjudfirebase',
    databaseURL: 'https://mawjudfirebase-default-rtdb.firebaseio.com',
    storageBucket: 'mawjudfirebase.appspot.com',
    iosClientId: '153662808794-ee5nid58p6m92qe1gqeeg53cntg9ogl4.apps.googleusercontent.com',
    iosBundleId: 'com.example.arb',
  );
}
