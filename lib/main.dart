import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:masrofy/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masrofy/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GoogleSignIn.instance.initialize(
    serverClientId:
        "1063652285590-vt9aoa1gcisfj0h9q7cgodabu6qphtah.apps.googleusercontent.com",
  );
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',

      child: ProviderScope(child: MyApp()),
    ),
  );
}
