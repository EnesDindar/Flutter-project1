import 'package:flutter/material.dart';

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
  List teamList = [];
  List teamMap1 = [
    {'Real Madrid': Image.asset('assets/RealMadrid.png')},
    {'Milan': Image.asset('assets/Milan.png')},
    {'Manchester City': Image.asset('assets/ManCity.png')},
    {'Bayern Münih': Image.asset('assets/BayernMunchen.png')},
    {'FC Liverpool': Image.asset('assets/Liverpool.png')},
    {'Paris Saint-Germain': Image.asset('assets/PSG.png')},
    {'Chelsea': Image.asset('assets/Chelsea.png')},
    {'Inter': Image.asset('assets/Inter.png')},
    {'Borussia Dortmund': Image.asset('assets/BorussiaDortmund.png')},
    {'FC Barcelona': Image.asset('assets/Barcelona.png')},
    {'Atlético de Madrid': Image.asset('assets/AtleticoMadrid.png')},
    {'Juventus': Image.asset('assets/Juventus.png')},
    {'Manchester United': Image.asset('assets/ManchesterUnited.png')}
  ];
  late final middle = myList.length / 2;
  late final part1 = myList.sublist(0, middle.toInt());
  late final part2 = myList.sublist(middle.toInt());
  void teamView() {
    setState(() {
      final teamMap = {
        'Real Madrid': Image.asset('assets/RealMadrid.png'),
        'Milan': Image.asset('assets/Milan.png'),
        'Manchester City': Image.asset('assets/ManCity.png'),
        'Bayern Münih': Image.asset('assets/BayernMunchen.png'),
        'FC Liverpool': Image.asset('assets/Liverpool.png'),
        'Paris Saint-Germain': Image.asset('assets/PSG.png'),
        'Chelsea': Image.asset('assets/Chelsea.png'),
        'Inter': Image.asset('assets/Inter.png'),
        'Borussia Dortmund': Image.asset('assets/BorussiaDortmund.png'),
        'FC Barcelona': Image.asset('assets/Barcelona.png'),
        'Atlético de Madrid': Image.asset('assets/AtleticoMadrid.png'),
        'Juventus': Image.asset('assets/Juventus.png'),
        'Manchester United': Image.asset('assets/ManchesterUnited.png'),
      };
      teamMap.entries.map((e) => teamList.add({e.key: e.value})).toList();
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
    teamView();
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
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
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
                                      gradient: const LinearGradient(
                                          colors: [Colors.indigo, Colors.cyan],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.sports_soccer_outlined,
                                    ),
                                    iconColor: Colors.white,
                                    textColor: Colors.white,
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
    );
  }
}
