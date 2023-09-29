// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  //methodv
  void _incrementCounter() {
    // setstate rebuild the widget
    setState(() {
      _counter++;
    });
  }

  //UI (user interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text("You pushed the button this many times:"),

            // counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            // button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            )
          ],
        ),
      ),
    );
  }
}
