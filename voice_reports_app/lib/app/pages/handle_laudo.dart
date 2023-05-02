import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:voice_reports_app/app/models/laudos.dart';

class HandleLaudoScreen extends StatefulWidget {
  const HandleLaudoScreen({super.key});

  @override
  State<HandleLaudoScreen> createState() => _HandleLaudoScreenState();
}

class _HandleLaudoScreenState extends State<HandleLaudoScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

  // TODO: Integrate with API
  submit() {
    var laudo = Laudos();
    var title =
        _titleController.text == "" ? "no-title" : _titleController.text;
    laudo.createLaudo(title, _controller.text);
    Navigator.of(context).pop();
  }

  // #region : Speech to text config
  final SpeechToText _speech = SpeechToText();
  // ignore: unused_field
  bool _speechEnabled = false;
  final String _text = "";
  String _lastWords = "Toque no microfone para começar a gravar...";

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  _initSpeech() async {
    _speechEnabled = await _speech.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speech.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speech.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    _lastWords = result.recognizedWords;
    if (result.finalResult) {
      setState(() => {_controller.text += "$_lastWords "});
    } else {
      setState(() {});
    }
  }
  // #endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Drawer(
      //   backgroundColor: Colors.blue,
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         title: const Text("Primeiro"),
      //         onTap: () => {
      //           debugPrint(_text),
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: const Text("Criar Laudo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(label: Text("Título")),
              ),
              const SizedBox(height: 20),
              TextField(
                minLines: 4,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: _controller,
                decoration: const InputDecoration(hintText: "Laudo..."),
              ),
              const SizedBox(height: 100),
              Column(
                children: [
                  const Text("Texto Reconhecido: "),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Center(
                        child: Text(
                          _lastWords,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () => submit(),
                child: const Text("Enviar"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _speech.isListening,
        glowColor: Colors.blueAccent,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton.large(
          backgroundColor:
              _speech.isNotListening ? Colors.blueAccent : Colors.red,
          onPressed: _speech.isNotListening ? _startListening : _stopListening,
          child: Center(
            child: Icon(_speech.isNotListening ? Icons.mic : Icons.stop),
          ),
        ),
      ),
    );
  }
}
