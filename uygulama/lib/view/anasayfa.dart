import 'package:flutter/material.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: const Color.fromARGB(137, 90, 89, 89),
          leading: Icon(Icons.sports_soccer_outlined,
              color: Colors.lightGreen[300], shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: const Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)])),
          )),
      body: Column(
        children: [],
      ),
    );
  }
}
