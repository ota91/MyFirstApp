import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(const HomeApp());

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade500,
          centerTitle: true,
          title: const Text(
            'بالقطة',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: const FirstScreen(),
        //body: Spen(),
        //body: Array(),
        //body: const Mony(),
        //body: AddTwoNumbers(),
      ),
    );
  }
}
