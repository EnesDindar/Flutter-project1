import 'package:flutter/material.dart';
import 'package:uygulama/view/secondPage.dart';

class homePage extends StatefulWidget {
  State createState() => homePageState();
}

class homePageState extends State<homePage> {
  String dropdownValue = 'Oyuncu Sayısını Giriniz...';
  String uyari = 'Oyuncu Sayısını Giriniz...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(137, 90, 89, 89),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Icon(Icons.sports_soccer_outlined,
              color: Colors.green[400], shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.sports_soccer_outlined,
                color: Colors.green[400], shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
          ),
        ],
        title: const Center(
            child: Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)]))),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 250),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.redAccent, Colors.blueAccent, Colors.purpleAccent]),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                          blurRadius: 5) //blur radius of shadow
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButtonFormField<String>(
                    dropdownColor: Colors.green,
                    elevation: 0,
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    iconEnabledColor: Colors.white,
                    value: dropdownValue,
                    items: <String>['Oyuncu Sayısını Giriniz...', '2 OYUNCU', '4 OYUNCU', '6 OYUNCU', '8 OYUNCU']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 18, color: Colors.white),
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
            ElevatedButton(
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
                child: Text('KAYDET'))
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
    title: Text("UYARI!"),
    content: Text("Lütfen Oyuncu Sayısını Giriniz"),
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
