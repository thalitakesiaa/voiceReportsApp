import 'package:flutter/material.dart';
import 'package:voice_reports_app/app/models/laudos.dart';

class DeleteLaudos extends StatefulWidget {
  const DeleteLaudos({super.key});

  @override
  State<DeleteLaudos> createState() => _DeleteLaudosState();
}

class _DeleteLaudosState extends State<DeleteLaudos> {
  final Laudos laudos = Laudos();
  final items = Laudos().getLaudos();

  deleteLaudo(index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Deletar Laudos"),
        ),
        body: SizedBox.expand(
          child: Container(
            child: ListView.builder(
              itemCount: laudos.getLen(),
              itemBuilder: (context, index) {
                if (index < items.length) {
                  final item = items[index];
                  return ListTile(
                    title: Text(item['title']!),
                    subtitle: Text(item['text']!),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => deleteLaudo(index),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
