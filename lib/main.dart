import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomNumber = 1;

  generateNumber() {
    setState(() {
      randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dice"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: TextButton(
                  style:
                      const ButtonStyle(splashFactory: NoSplash.splashFactory),
                  onPressed: () {
                    generateNumber();
                  },
                  child: Image.asset("images/dice$randomNumber.png"),
                ),
              ),
            ),
            Expanded(
                child: Text(
              "You scored is: $randomNumber",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ))
          ],
        ),
      ),
    ));
  }
}
