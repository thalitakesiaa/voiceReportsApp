import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    logout() {
      Navigator.of(context).pushReplacementNamed("login");
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 12, 70),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Voice Reports"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => logout(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey),
              ),
              child: const Text("Alterar Usuários"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey),
              ),
              child: const Text("Cadastrar Usuários"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
