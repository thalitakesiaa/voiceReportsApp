import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Widget _logoSvg = SvgPicture.asset("assets/Icon.svg");
  // ignore: prefer_typing_uninitialized_variables
  var con;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => {
        Navigator.of(con).pushReplacementNamed("/login"),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    con = context;

    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 0.4,
                height: screenWidth * 0.4,
                child: _logoSvg,
              ),
              const SizedBox(height: 30),
              const Text('Voice Reports', style: TextStyle(fontSize: 22)),
              // ElevatedButton(
              //   onPressed: (() => {
              //         Navigator.of(context)
              //             .pushNamed('/login'), //TODO: PushAndReplace
              //       }),
              //   child: const Text("Ir para Login"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
