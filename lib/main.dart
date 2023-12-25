/*
Practice Question 2: Enhancing the Flutter App with Interactivity

Task Description:
Expand your Flutter application by adding interactivity. Include a button in your Scaffold's body that, when pressed, updates the text of one of the Text widgets. For example, a Text widget initially displaying "Hello" should change to "Hello, Flutter!" when the button is pressed.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textValue = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                textValue,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Some other text surrounded by padding'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() { //this line forces widget to be redrawn with the execution of the code within
                  textValue = 'Hello, Flutter!';
                });
              },
              child: const Text("Press me!"),
            ),
          ],
        ),
      ),
    );
  }
}
