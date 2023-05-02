import 'package:flutter/material.dart';
import 'package:voice_reports_app/app/models/laudos.dart';

class ListLaudos extends StatefulWidget {
  const ListLaudos({super.key});

  @override
  State<ListLaudos> createState() => _ListLaudosState();
}

class _ListLaudosState extends State<ListLaudos> {
  final Laudos laudos = Laudos();
  final items = Laudos().getLaudos();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Lista de laudos"),
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
