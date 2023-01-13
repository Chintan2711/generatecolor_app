import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic colorCode = 0xff000000;
  Random random = Random();

  int index = 0;
  List colorList = [];

  TextEditingController emailController = TextEditingController();

  void generateColor() {
    colorCode = random.nextInt(0xffffffff);
    index++;
    colorList.add(colorCode);
    setState(() {});
  }

  void changeColor() {
    if (index != 0) {
      index--;
    }
    setState(() {});
  }

  @override
  void initState() {
    colorList.add(colorCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorList[index]),
      appBar: AppBar(),
      // backgroundColor: Color(colorList[index]),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  generateColor();
                },
              ),
              FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  changeColor();
                },
              ),
              Text(
                "$index",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}