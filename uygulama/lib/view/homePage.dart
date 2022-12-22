// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String? selectedItem;
  String? _select = null;

  List<String> persons = ["2 Oyuncu", "4 Oyuncu", "6 Oyuncu", "8 Oyuncu"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: const Color.fromARGB(137, 90, 89, 89),
          leading: Icon(Icons.sports_soccer_outlined,
              color: _themeColors().color1, shadows: const [Shadow(color: Colors.black, blurRadius: 15.0)], size: 40),
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text('FIFA MATCH', style: TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 15.0)])),
          )),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: _themeColors().color1,
                  border: Border.all(width: 2, color: _themeColors().color2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: _themeColors().color2.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: DropdownButton(
                  alignment: Alignment.center,
                  autofocus: true,
                  focusColor: _themeColors().color1,
                  icon: Icon(Icons.arrow_downward_outlined),
                  style: TextStyle(
                    color: _themeColors().color2.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  dropdownColor: _themeColors().color1,
                  items: persons.map((selectedItem) {
                    return DropdownMenuItem(
                      child: Text(selectedItem),
                      value: selectedItem,
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedItem = value;
                      _select = value;
                    });
                  },
                  value: selectedItem == "" ? null : selectedItem,
                  hint: Text("Lütfen Kişi Sayısını Giriniz"),
                ),
              ),
            ),
            //dropdown finish
            Text(_select ?? '$_select'),
            if(_select ==persons[0]) 
           { 
           };
           
          ],
        ),
      ),
    );
  }
}

class _textField extends StatelessWidget {
  const _textField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _controller,
        style: TextStyle(color: _themeColors().color2),
        decoration: InputDecoration(
            border: OutlineInputBorder(),
          
            contentPadding: EdgeInsets.all(20),
           
            hintText: "Yazını Bekliyorum",
           
            hintStyle: TextStyle(color: _themeColors().color2),
           
            filled: true,
            
            fillColor: _themeColors().color2),
        autofocus: false,
        cursorColor: _themeColors().color3);
  }
}

class _themeColors {
  final color1 = Colors.lightGreen[300];
  final color2 = Colors.black;
  final color3 = Colors.white;
}
