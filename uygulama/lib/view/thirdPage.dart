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
  late final middle = myList.length / 2;
  late final part1 = myList.sublist(0, middle.toInt());
  late final part2 = myList.sublist(middle.toInt());
  int i = 0;
  int a = 0;
  void addItemToList() {
    setState(() {
      myList.addAll([
        widget.name1,
        widget.name2,
        widget.name3,
        widget.name4,
        widget.name5,
        widget.name6,
        widget.name7,
        widget.name8
      ]);
    });
    int i = 0;
    while (i != '' && i < 8) {
      myList.remove(i);
      i++;
      if (i != '' && i != null) {
        break;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    addItemToList();
    myList.shuffle();
    part1.shuffle();
    part2.shuffle();
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
      body: Padding(
        padding: const EdgeInsets.only(top: 350),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 200,
                  color: Colors.red,
                  width: 150,
                  child: Center(
                    child: Text(
                      part1[a].toString(),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )),
              Container(
                  height: 200,
                  color: Colors.red,
                  width: 150,
                  child: Center(
                    child: Text(
                      part2[a].toString(),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
