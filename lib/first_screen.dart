import 'package:flutter/material.dart';
import 'package:third_project/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Some text';
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
              child: Text(
                text,
                style: const TextStyle(fontSize: 19),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _returnData(context);
              },
              child: const Text(
                'Go to second screen',
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _returnData(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => const SecondScreen());
    final result = await Navigator.push(context, route);
    setState(() {
      text = result;
    });
  }
}
