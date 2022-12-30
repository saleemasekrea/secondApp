import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("GAME WOW"),
          backgroundColor: Colors.red,
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int iL = 1;
int iR = 2;

class _MyAppState extends State<MyApp> {
  void changeImage() {
    iL = Random().nextInt(5) + 1;
    iR = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          iL == iR ? "WOOOW" : "TRY AGIN",
          style: const TextStyle(
              color: Color.fromARGB(255, 7, 23, 255), fontSize: 50),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset(
                  'images/$iL.png',
                  width: 200,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset(
                  'images/$iR.png',
                  width: 200,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
