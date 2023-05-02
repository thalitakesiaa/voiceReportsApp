import 'package:flutter/material.dart';
import 'package:voice_reports_app/app/components/home/splitter_card.dart';

class MascarasSplitter extends StatelessWidget {
  final String title;

  const MascarasSplitter({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    createLaudo() {
      debugPrint("create");
    }

    listLaudo() {
      debugPrint("create");
    }

    deleteLaudo() {
      debugPrint("create");
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
                  text: "Criar Máscaras",
                  onTap: () => createLaudo(),
                  cor: Colors.grey,
                ),
                const SizedBox(width: 20),
                SplitterCard(
                  text: "Ver Máscaras",
                  onTap: () => listLaudo(),
                  cor: Colors.grey,
                ),
                const SizedBox(width: 20),
                SplitterCard(
                  text: "Deletar Máscaras",
                  onTap: () => deleteLaudo(),
                  cor: Colors.grey,
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
