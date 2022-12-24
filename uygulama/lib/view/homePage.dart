import 'package:flutter/material.dart';
import 'package:uygulama/product/widget/elevatedButton.dart';

import '../product/widget/callback_dropdown.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(137, 90, 89, 89),
          actions: [
            Icon(Icons.sports_soccer_outlined,
                color: themeColors1().color1, shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
          ],
          title: const Center(
              child: Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)]))),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: themeColors1().color1,
                      border: Border.all(width: 2, color: themeColors1().color2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: themeColors1().color2.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 8,
                        ),
                      ]),
                  child: CallBackDropdown(onUserSelected: (CallbackUser user) {}),
                ),
              ),
              Text(''),
              elevatedButton1()
            ],
          ),
        ));
  }
}

class CallbackUser {
  final String player;

  CallbackUser(this.player);

  // TODO: Dummy Remove it
  static List<CallbackUser> dummyUsers() {
    return [
      CallbackUser('2 Oyuncu'),
      CallbackUser('4 Oyuncu'),
      CallbackUser('6 Oyuncu'),
      CallbackUser('8 Oyuncu'),
    ];
  }

  @override
  bool operator ==(covariant CallbackUser other) {
    if (identical(this, other)) return true;

    return other.player == player;
  }

  @override
  int get hashCode => player.hashCode;
}

class themeColors1 {
  final color1 = Colors.lightGreen[300];
  final color2 = Colors.black;
  final color3 = Colors.white;
}
