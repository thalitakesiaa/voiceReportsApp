import 'package:flutter/material.dart';

class NewLaudoComp extends StatelessWidget {
  const NewLaudoComp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed("/handleLaudo"),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text("Novo Laudo"),
          ),
        ),
      ),
    );
  }
}
