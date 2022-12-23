import 'package:flutter/material.dart';

import '../../view/homePage.dart';

class CallBackDropdown extends StatefulWidget {
  const CallBackDropdown({Key? key, required this.onUserSelected}) : super(key: key);

  final void Function(CallbackUser user) onUserSelected;
  @override
  State<CallBackDropdown> createState() => _CallBackDropdownState();
}

class _CallBackDropdownState extends State<CallBackDropdown> {
  CallbackUser? _user;

  void _updateUser(CallbackUser? item) {
    setState(() {
      _user = item;
    });
    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
        disabledHint: const Text('Bu alanı boş bırakmayınız'),
        dropdownColor: themeColors1().color1,
        alignment: Alignment.center,
        autofocus: true,
        icon: const Icon(Icons.arrow_downward_outlined),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 20,
        ),
        hint: const Text("Lütfen Kişi Sayısını Giriniz"),
        value: _user,
        items: CallbackUser.dummyUsers().map((e) {
          return DropdownMenuItem(
            alignment: Alignment.center,
            child: Text(e.player,
                style: TextStyle(
                  backgroundColor: themeColors1().color1,
                  color: themeColors1().color2,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                )),
            value: e,
          );
        }).toList(),
        onChanged: _updateUser);
  }
}
