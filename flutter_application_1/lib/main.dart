import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
 int oyunNo=1;
 
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold
    (
      appBar: (AppBar(
        title: Text("Bugün Oynayacağımız Oyun"),
        centerTitle: true,
      )),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
              child: Text("1)LoL",)),
            ), 
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container
              (child: Text("2)Warzone")),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container
              (child: Text("3)Divinity")),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container
              (child: FlatButton(
                child: Text(oyunNo.toString()),
                onPressed: () { 
                   setState(() {
                     oyunNo=Random().nextInt(3)+1;
                   });
               },
              )))]
        ),
      ),
    )
  );
  }
}

