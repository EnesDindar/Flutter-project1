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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.red)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 5),
                    itemCount: part1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [Colors.indigo, Colors.cyan],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.sports_soccer_outlined),
                              iconColor: Colors.white,
                              textColor: Colors.white,
                              title: Text(part1[index], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                            )),
                      );
                    }),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.indigo, Colors.cyan]),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      "VS",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(right: 5),
                    itemCount: part2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [Colors.indigo, Colors.cyan],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(30)),
                            child: ListTile(
                              leading: const Icon(Icons.sports_soccer_outlined),
                              iconColor: Colors.white,
                              textColor: Colors.white,
                              title: Text(part2[index], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                            )),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
