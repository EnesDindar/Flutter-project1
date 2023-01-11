import 'package:flutter/material.dart';
import 'dart:math';
import 'package:uygulama/view/secondPage.dart';
import 'package:uygulama/view/homePage.dart';

class thirdPage extends StatefulWidget {
  thirdPage({
    super.key,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.name5,
    required this.name6,
    required this.name7,
    required this.name8,
  });

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
  List teamList = [
    'Real Madrid',
    'Milan',
    'Manchester City',
    'Bayern Münih',
    'FC Liverpool',
    'Paris Saint-Germain',
    'Chelsea',
    'Inter',
    'Borussia Dortmund',
    'FC Barcelona',
    'Atlético de Madrid',
    'Juventus',
    'Manchester United'
  ];
  List teamImage = [
    'assets/images/RealMadrid.png',
    'assets/images/Milan.png',
    'assets/images/ManCity.png',
    'assets/images/BayernMunchen.png',
    'assets/images/Liverpool.png',
    'assets/images/PSG.png',
    'assets/images/Chelsea.png',
    'assets/images/Inter.png',
    'assets/images/BorussiaDortmund.png',
    'assets/images/Barcelona.png',
    'assets/images/AtleticoMadrid.png',
    'assets/images/Juventus.png',
    'assets/images/ManchesterUnited.png'
  ];
  late final middle = myList.length / 2;
  late final part1 = myList.sublist(0, middle.toInt());
  late final part2 = myList.sublist(middle.toInt());
  int result1 = 0;
  int result2 = 1;
  void randomNumber() {
    setState(() {
      int num1 = Random().nextInt(13);
      int num2 = Random().nextInt(13);

      if (num1 == num2 || num1 == null || num2 == null) {
        num1 = Random().nextInt(13);
        num2 = Random().nextInt(13);
      } else {
        result1 = num1;
        result2 = num2;
      }
    });
  }

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
    randomNumber();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.sports_soccer_outlined,
                color: ColorsItems.white, shadows: [Shadow(color: ColorsItems.black, blurRadius: 15.0)], size: 40),
          ),
        ],
        title:
            const Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: ColorsItems.black, blurRadius: 15.0)])),
      ),
      body: Stack(children: [
        SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: ColorsItems.black,
                              blurRadius: 20,
                              offset: Offset(0, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: height / 3,
                              width: width / 2,
                              child: Image.asset(
                                teamImage[result1].toString(),
                                height: 300,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                                height: height / 2 / 3,
                                width: width / 2,
                                alignment: Alignment.center,
                                child: Text(teamList[result1],
                                    maxLines: 4,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 30.0,
                                        color: ColorsItems.white,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: ColorsItems.black,
                              blurRadius: 20,
                              offset: Offset(0, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: height / 3,
                              width: width / 2,
                              child: Image.asset(
                                teamImage[result2].toString(),
                                height: 300,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                                height: height / 2 / 3,
                                width: width / 2,
                                alignment: Alignment.center,
                                child: Text(teamList[result2],
                                    maxLines: 4,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 30.0,
                                        color: ColorsItems.white,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: part1.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: ColorsItems.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 1), // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: ListTile(
                                        leading: const Icon(Icons.sports_soccer_outlined),
                                        iconColor: ColorsItems.white,
                                        textColor: ColorsItems.white,
                                        title: Text(part1[index],
                                            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                                      )),
                                ],
                              );
                            }),
                      ),
                      Expanded(
                        flex: 5,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: part2.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: ColorsItems.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 1), // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: ListTile(
                                        leading: const Icon(
                                          Icons.sports_soccer_outlined,
                                        ),
                                        iconColor: ColorsItems.white,
                                        textColor: ColorsItems.white,
                                        title: Text(part2[index],
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                                      )),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 358,
          left: 157,
          child: Container(
            width: 80,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: ColorsItems.black,
                  blurRadius: 20,
                  offset: Offset(0, 1), // Shadow position
                ),
              ],
            ),
            child: const Text('VS',
                style: TextStyle(
                    color: ColorsItems.white,
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ]),
    );
  }
}
