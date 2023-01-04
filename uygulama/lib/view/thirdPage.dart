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
  final List<int> colorCodes = <int>[600, 500, 100];
  late final middle = myList.length / 2;
  late final part1 = myList.sublist(0, middle.toInt());
  late final part2 = myList.sublist(middle.toInt());
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
  }

  @override
  void initState() {
    super.initState();
    addItemToList();
    myList.removeWhere((i) => ['', null].contains(i));
    myList.shuffle();
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 205,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: part1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [Colors.indigo, Colors.cyan]),
                          ),
                          height: 50,
                          child: Center(child: Text(part1[index])),
                        );
                      }),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.indigo, Colors.cyan]),
                    border: Border(
                      left: BorderSide(
                        color: Colors.cyan,
                        width: 10.0,
                      ),
                      right: BorderSide(
                        color: Colors.cyan,
                        width: 10.0,
                      ),
                      top: BorderSide(
                        color: Colors.indigo,
                        width: 10.0,
                      ),
                      bottom: BorderSide(
                        color: Colors.indigo,
                        width: 10.0,
                      ),
                    ),
                  ),
                  child: const Text(
                    "VS",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  width: 160,
                  height: 204,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: part2.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [Colors.indigo, Colors.cyan]),
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                          height: 50,
                          child: Center(child: Text(part2[index])),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
