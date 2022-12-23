import 'package:flutter/material.dart';
import 'package:uygulama/view/homePage.dart';

import '../../view/secondScreen.dart';

class elevatedButton1 extends StatefulWidget {
  const elevatedButton1({super.key});

  @override
  State<elevatedButton1> createState() => _elevatedButton1State();
}

class _elevatedButton1State extends State<elevatedButton1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => secondScreen()));
      },
      child: const Text('KAYDET'),
    );
  }
}

class elevatedButton2 extends StatefulWidget {
  const elevatedButton2({super.key});

  @override
  State<elevatedButton2> createState() => _elevatedButton2State();
}

class _elevatedButton2State extends State<elevatedButton2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('GERİ DÖN'),
    );
  }
}

class elevatedButton3 extends StatefulWidget {
  const elevatedButton3({super.key});

  @override
  State<elevatedButton3> createState() => _elevatedButton3State();
}

class _elevatedButton3State extends State<elevatedButton3> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('KAYDET'),
    );
  }
}
