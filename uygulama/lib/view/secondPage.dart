import 'package:flutter/material.dart';
import 'homePage.dart';

class secondPage extends StatefulWidget {
  secondPage({super.key, this.userSelected});
  String? userSelected; //dropdownValue değeri
  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  String? name1, name2, name3, name4, name5, name6, name7, name8;
  String _textName1 = "",
      _textName2 = "",
      _textName3 = "",
      _textName4 = "",
      _textName5 = "",
      _textName6 = "",
      _textName7 = "",
      _textName8 = "";

  final formKey = GlobalKey<FormState>();
  void _saveFormData() {
    if (formKey.currentState!.validate()) {
      formKey.currentState?.save();
      setState(() {
        _textName1 = name1!;
        _textName2 = name2!;
        _textName3 = name3!;
        _textName4 = name4!;
        _textName5 = name5!;
        _textName6 = name6!;
        _textName7 = name7!;
        _textName8 = name8!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(137, 90, 89, 89),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          widget.userSelected == '2 OYUNCU'
              ? Column(
                  children: [
                    _textFormField1(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField2(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(4))),
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(_textName1), Text(_textName2)],
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
          widget.userSelected == '4 OYUNCU'
              ? Column(
                  children: [
                    _textFormField1(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField2(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField3(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField4(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(4))),
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(_textName1), Text(_textName2), Text(_textName3), Text(_textName4)],
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
          widget.userSelected == '6 OYUNCU'
              ? Column(
                  children: [
                    _textFormField1(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField2(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField3(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField4(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField5(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField6(),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(4))),
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_textName1),
                            Text(_textName2),
                            Text(_textName3),
                            Text(_textName4),
                            Text(_textName5),
                            Text(_textName6)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
          widget.userSelected == '8 OYUNCU'
              ? Column(
                  children: [
                    _textFormField1(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField2(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField3(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField4(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField5(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField6(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField7(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFormField8(),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(4))),
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_textName1),
                            Text(_textName2),
                            Text(_textName3),
                            Text(_textName4),
                            Text(_textName5),
                            Text(_textName6),
                            Text(_textName7),
                            Text(_textName8),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  onPressed: () => _saveFormData(),
                  child: const Text("Kaydet"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  TextFormField _textFormField8() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name8 = data,
    );
  }

  TextFormField _textFormField7() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name7 = data,
    );
  }

  TextFormField _textFormField6() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name6 = data,
    );
  }

  TextFormField _textFormField5() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name5 = data,
    );
  }

  TextFormField _textFormField4() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name4 = data,
    );
  }

  TextFormField _textFormField3() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name3 = data,
    );
  }

  TextFormField _textFormField2() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name2 = data,
    );
  }

  TextFormField _textFormField1() {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      onSaved: (data) => name1 = data,
    );
  }
}
