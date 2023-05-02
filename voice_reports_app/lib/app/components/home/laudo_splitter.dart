import 'package:flutter/material.dart';
import 'package:voice_reports_app/app/components/home/splitter_card.dart';

class LaudoSplitter extends StatelessWidget {
  final String title;

  const LaudoSplitter({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    createLaudo() {
      Navigator.of(context).pushNamed("/handleLaudo");
    }

    listLaudo() {
      Navigator.of(context).pushNamed("/listLaudo");
    }

    deleteLaudo() {
      Navigator.of(context).pushNamed("/deleteLaudo");
    }

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(children: [
                SplitterCard(
                  text: "Criar Laudo",
                  onTap: () => createLaudo(),
                  cor: Colors.green,
                ),
                const SizedBox(width: 20),
                SplitterCard(
                  text: "Ver Laudos",
                  onTap: () => listLaudo(),
                  cor: Colors.blueAccent,
                ),
                const SizedBox(width: 20),
                SplitterCard(
                  text: "Deletar Laudos",
                  onTap: () => deleteLaudo(),
                  cor: Colors.red,
                ),
                const SizedBox(width: 20),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
