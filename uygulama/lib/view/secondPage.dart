import 'package:flutter/material.dart';
import 'package:uygulama/product/widget/ElevatedButton.dart';
import 'package:uygulama/view/thirdPage.dart';
import 'homePage.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key, this.userSelected});
  final String? userSelected; //dropdownValue degeri
  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  TextEditingController name1 = TextEditingController();
  TextEditingController name2 = TextEditingController();
  TextEditingController name3 = TextEditingController();
  TextEditingController name4 = TextEditingController();
  TextEditingController name5 = TextEditingController();
  TextEditingController name6 = TextEditingController();
  TextEditingController name7 = TextEditingController();
  TextEditingController name8 = TextEditingController();
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigo, Colors.cyan]),
          ),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.userSelected == '2 OYUNCU'
                ? Column(
                    children: [
                      SizedBox(height: 250),
                      _textFormField1(),
                      const SizedBox(
                        height: 10,
                      ),
                      _textFormField2(),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                : const SizedBox(),
            widget.userSelected == '4 OYUNCU'
                ? Column(
                    children: [
                      SizedBox(height: 180),
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
                    ],
                  )
                : const SizedBox(),
            widget.userSelected == '6 OYUNCU'
                ? Center(
                    child: Column(
                      children: [
                        SizedBox(height: 120),
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
                      ],
                    ),
                  )
                : const SizedBox(),
            widget.userSelected == '8 OYUNCU'
                ? Center(
                    child: Column(
                      children: [
                        SizedBox(height: 55),
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
                      ],
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: ElevatedButton1(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => thirdPage(
                                      name1: name1.text,
                                      name2: name2.text,
                                      name3: name3.text,
                                      name4: name4.text,
                                      name5: name5.text,
                                      name6: name6.text,
                                      name7: name7.text,
                                      name8: name8.text))));
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: const Text('KAYDET'))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextFormField _textFormField8() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name8,
      onChanged: (value) {
        setState(() {
          name8.text = value.toString();
          name8.selection = TextSelection.fromPosition(TextPosition(offset: name8.text.length));
        });
      },
    );
  }

  TextFormField _textFormField7() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name7,
      onChanged: (value) {
        setState(() {
          name7.text = value.toString();
          name7.selection = TextSelection.fromPosition(TextPosition(offset: name7.text.length));
        });
      },
    );
  }

  TextFormField _textFormField6() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name6,
      onChanged: (value) {
        setState(() {
          name6.text = value.toString();
          name6.selection = TextSelection.fromPosition(TextPosition(offset: name6.text.length));
        });
      },
    );
  }

  TextFormField _textFormField5() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name5,
      onChanged: (value) {
        setState(() {
          name5.text = value.toString();
          name5.selection = TextSelection.fromPosition(TextPosition(offset: name5.text.length));
        });
      },
    );
  }

  TextFormField _textFormField4() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name4,
      onChanged: (value) {
        setState(() {
          name4.text = value.toString();
          name4.selection = TextSelection.fromPosition(TextPosition(offset: name4.text.length));
        });
      },
    );
  }

  TextFormField _textFormField3() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name3,
      onChanged: (value) {
        setState(() {
          name3.text = value.toString();
          name3.selection = TextSelection.fromPosition(TextPosition(offset: name3.text.length));
        });
      },
    );
  }

  TextFormField _textFormField2() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name2,
      onChanged: (value) {
        setState(() {
          name2.text = value.toString();
          name2.selection = TextSelection.fromPosition(TextPosition(offset: name2.text.length));
        });
      },
    );
  }

  TextFormField _textFormField1() {
    return TextFormField(
      showCursor: true,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "İsim Giriniz",
          hintText: "İsim",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))),
      validator: (value) {
        if (value!.length < 3) return "İsim alanı en az 3 karakter olmalıdır";
        return null;
      },
      controller: name1,
      onChanged: (value) {
        setState(() {
          name1.text = value.toString();
          name1.selection = TextSelection.fromPosition(TextPosition(offset: name1.text.length));
        });
      },
    );
  }
}
