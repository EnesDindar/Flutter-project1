import 'package:flutter/material.dart';

import 'homePage.dart';

class secondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: const Color.fromARGB(137, 90, 89, 89),
          leading: Icon(Icons.sports_soccer_outlined,
              color: themeColors1().color1, shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)])),
          )),
      body: Center(
        child: Text('Second Screen'),
      ),
    );
  }
}
