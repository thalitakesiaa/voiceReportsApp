import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voice_reports_app/app/services/api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String? _username;
  late String? _password;

  final Widget _logoSvg = SvgPicture.asset("assets/Icon.svg");

  submitForm() {
    if (_formKey.currentState!.validate()) {
      var sendData = {'username': _username, 'password': _password};

      // TODO: Replace with api call
      var data = Api().get();
      debugPrint("$data \n $sendData");

      //TODO: ReplaceNamed
      Navigator.of(context).pushNamed("/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 12, 70),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: _logoSvg,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Voice Reports",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 50),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Usuário'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Digite um usuário';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _username = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Senha'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Digite uma senha';
                      }
                      if (value.length < 8) {
                        return 'Senha deve possuir ao menos 8 caracteres';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () => submitForm(),
                    child: const Text(
                      "Logar",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  // const SizedBox(height: 20),
                  // GestureDetector(
                  //   onTap: () => Navigator.of(context).pushNamed('/register'),
                  //   child: const Text("Cadastre-se"),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
