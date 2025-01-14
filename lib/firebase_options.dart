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
    apiKey: 'AIzaSyCB32dePyTReHbz02VmrtCtGyhLfne86Rs',
    appId: '1:129125382215:web:bff6a7bf40e783c8dfd962',
    messagingSenderId: '129125382215',
    projectId: 'impact-review-app',
    authDomain: 'impact-review-app.firebaseapp.com',
    storageBucket: 'impact-review-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGpqlZdnJv1j37PA2GaeIEEc8jf52QJKA',
    appId: '1:129125382215:android:f43d553167a0bc0edfd962',
    messagingSenderId: '129125382215',
    projectId: 'impact-review-app',
    storageBucket: 'impact-review-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMyu1v9fsoCQOyCIkHYRXXVsCu1B7FKMw',
    appId: '1:129125382215:ios:c4659036d134a2ffdfd962',
    messagingSenderId: '129125382215',
    projectId: 'impact-review-app',
    storageBucket: 'impact-review-app.appspot.com',
    iosBundleId: 'com.example.foodReviewApp',
  );
}
