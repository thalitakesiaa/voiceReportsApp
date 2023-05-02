import 'package:flutter/material.dart';
import 'package:voice_reports_app/app/components/home/laudo_splitter.dart';
import 'package:voice_reports_app/app/components/home/mascara_splitter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 12, 70),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Voice Reports"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Text("Bem Vindo!", style: TextStyle(fontSize: 20)),
              SizedBox(height: 30),
              LaudoSplitter(title: "Laudos"),
              SizedBox(height: 20),
              MascarasSplitter(title: "Máscaras"),
            ],
          ),
        ),
      ),
    );
  }
}
