import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fproject/login.dart';
import 'package:fproject/registration.dart';
import 'package:fproject/splash.dart';

import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
  MaterialApp(
    home: Splash(
    ),
    ),
  );
}
