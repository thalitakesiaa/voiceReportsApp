import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void goToLoginScreen() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  Future<void> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    goToLoginScreen();
  }

  @override
  void initState() {
    getData();
    debugPrint("Agora foi");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Voice Reports'),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
