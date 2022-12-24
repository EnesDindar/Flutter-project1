import 'package:flutter/material.dart';
import 'package:uygulama/view/homePage.dart';
import 'package:uygulama/view/secondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/uygulama/lib/view/homePage.dart': (context) => homePage(),
        '/uygulama/lib/view/secondScreen.dart': (context) => secondScreen(),
      },
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: homePage(),
    );
  }
}
