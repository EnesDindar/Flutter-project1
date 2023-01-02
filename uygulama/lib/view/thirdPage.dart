import 'package:flutter/material.dart';
import 'dart:math';

class thirdPage extends StatefulWidget {
  thirdPage(
      {super.key,
      required this.name1,
      required this.name2,
      required this.name3,
      required this.name4,
      required this.name5,
      required this.name6,
      required this.name7,
      required this.name8});

  final String name1;
  final String name2;
  final String name3;
  final String name4;
  final String name5;
  final String name6;
  final String name7;
  final String name8;
  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  List<String> myList = [];
  void addItemToList() {
    setState(() {
      myList.insert(0, widget.name1);
      myList.insert(1, widget.name2);
      myList.insert(2, widget.name3);
      myList.insert(3, widget.name4);
      myList.insert(4, widget.name5);
      myList.insert(5, widget.name6);
      myList.insert(6, widget.name7);
      myList.insert(7, widget.name8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigo, Colors.cyan]),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.sports_soccer_outlined,
                color: Colors.white, shadows: [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
          ),
        ],
        title: const Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)])),
      ),
      body: Column(children: [
        Container(
            height: 200,
            color: Colors.red,
            width: 200,
            child: Text(
              widget.name1 + widget.name2,
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
        Text(myList[0], style: TextStyle(fontSize: 20, color: Colors.black)),
      ]),
    );
  }
}
