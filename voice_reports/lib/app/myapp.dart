import 'package:flutter/material.dart';

// Import App Screens
import 'package:voice_reports/app/pages/splash.dart';
import 'package:voice_reports/app/pages/login.dart';
import 'package:voice_reports/app/pages/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Voice Reports",
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen(),
        });
  }
}
