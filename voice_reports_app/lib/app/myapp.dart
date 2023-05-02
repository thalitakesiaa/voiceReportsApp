import 'package:flutter/material.dart';

// Pages
import 'package:voice_reports_app/app/pages/home.dart';
import 'package:voice_reports_app/app/pages/splash.dart';
import 'package:voice_reports_app/app/pages/login.dart';
import 'package:voice_reports_app/app/pages/handle_laudo.dart';
import 'package:voice_reports_app/app/components/laudos/delete_laudos.dart';
import 'package:voice_reports_app/app/components/laudos/list_laudos.dart';

// Theme
import 'package:voice_reports_app/app/utils/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Routes
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const Home(),
        '/handleLaudo': (context) => const HandleLaudoScreen(),
        '/listLaudo': (context) => const ListLaudos(),
        '/deleteLaudo': (context) => const DeleteLaudos(),
      },

      // Home
      home: const Home(),

      // Themes
      theme: CustomTheme.mainTheme,
    );
  }
}
