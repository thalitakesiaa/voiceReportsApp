import 'package:flutter/material.dart';

class SplitterCard extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color cor;

  const SplitterCard(
      {super.key, required this.text, required this.onTap, required this.cor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          color: cor,
        ),
        // width: 100,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
