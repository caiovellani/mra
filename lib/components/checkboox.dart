import 'package:flutter/material.dart';

class CheckBoxLogin extends StatefulWidget {
  const CheckBoxLogin({super.key});

  @override
  State<CheckBoxLogin> createState() => _CheckBoxLoginState();
}

class _CheckBoxLoginState extends State<CheckBoxLogin> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      activeColor: Colors.blue[700],
      onChanged: (newBool) {
        setState(() {
          _isChecked = newBool == true;
        });
      },
    );
  }
}
