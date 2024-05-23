import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(32),
                child: TextField(
                  controller: textFieldController,
                  style: const TextStyle(fontSize: 24),
                )),
            ElevatedButton(
              onPressed: () {
                String text = textFieldController.text;
                Navigator.pop(context, text);
              },
              child: const Text(
                'Send Text Data',
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
