import 'package:flutter/material.dart';
import 'package:uygulama/view/secondPage.dart';
import 'package:uygulama/product/widget/ElevatedButton.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class homePage extends StatefulWidget {
  State createState() => homePageState();
}

class homePageState extends State<homePage> {
  String dropdownValue = 'Oyuncu Sayısını Giriniz...';
  final String uyari = 'Oyuncu Sayısını Giriniz...';
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.deepPurple, Colors.purpleAccent]),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Icons.sports_soccer_outlined,
              color: Colors.white, shadows: [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Colors.deepPurple, Colors.purpleAccent]),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      offset: Offset(0, 1), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButtonFormField<String>(
                    dropdownColor: Colors.deepPurple,
                    elevation: 0,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    iconEnabledColor: Colors.white,
                    value: dropdownValue,
                    items: <String>['Oyuncu Sayısını Giriniz...', '2 OYUNCU', '4 OYUNCU', '6 OYUNCU', '8 OYUNCU']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton1(
                onPressed: () {
                  if (dropdownValue != uyari) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => secondPage(userSelected: dropdownValue)),
                    );
                  } else {
                    showAlertDialog(context);
                  }
                },
                borderRadius: BorderRadius.circular(20),
                child: const Text('KAYDET'))
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("TAMAM"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  AlertDialog alert = AlertDialog(
    title: const Text("UYARI!"),
    content: const Text("Lütfen Oyuncu Sayısını Giriniz"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
