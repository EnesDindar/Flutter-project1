import 'package:flutter/material.dart';
import 'package:uygulama/product/widget/callback_dropdown.dart';

import 'homePage.dart';

class secondScreen extends StatelessWidget {
  String? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(137, 90, 89, 89),
        actions: [
          Icon(Icons.sports_soccer_outlined,
              color: themeColors1().color1, shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
        ],
        title: Center(
            child: Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)]))),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
