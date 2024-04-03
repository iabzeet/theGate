import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gated/auth/authenticate.dart';
import 'package:gated/firebase_options.dart';
import 'package:gated/themes/dark_theme.dart';
import 'package:gated/themes/light_theme.dart';
//import 'package:gated/auth/login_or_register.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const AuthPage(),
      darkTheme: darkTheme,
    );
  }
} 