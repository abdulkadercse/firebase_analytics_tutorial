import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAxKb4x7MBCPrwk-n-hLhm9PKc9RWhABwA',
    appId: '1:453829112125:web:3fdf7875805301bee6d554',
    messagingSenderId: '453829112125',
    projectId: 'salespro-19e86',
    authDomain: 'salespro-19e86.firebaseapp.com',
    storageBucket: 'salespro-19e86.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARmFi8oFnI7LFl32cf79MCekdyxJ3vwjk',
    appId: '1:279493315034:android:c84ad15e11fef49c9a18e3',
    messagingSenderId: '279493315034',
    projectId: 'fir-7ad4d',
    storageBucket: 'fir-7ad4d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2DS3REO61nzIYOijW4GOHmyemlQrr4QI',
    appId: '1:453829112125:ios:a65a63d927a1f664e6d554',
    messagingSenderId: '453829112125',
    projectId: 'salespro-19e86',
    storageBucket: 'salespro-19e86.appspot.com',
    iosClientId: '453829112125-s8knjn86uhrqbp426m4vge5tj545mlc4.apps.googleusercontent.com',
    iosBundleId: 'com.maantheme.mobilepos.mobilePos',
  );
}