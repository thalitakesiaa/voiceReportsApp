import 'package:flutter/material.dart';

class Blank extends StatefulWidget {
  const Blank({super.key});

  @override
  State<Blank> createState() => _BlankState();
}

class _BlankState extends State<Blank> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Scaffold(
        body: Center(
          child: Text('Blank'),
        ),
      ),
    );
  }
}
