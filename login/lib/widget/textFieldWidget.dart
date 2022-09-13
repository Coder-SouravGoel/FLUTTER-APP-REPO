import 'package:flutter/material.dart';
import '../views/home_view.dart';

class textFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIconData;
  final IconData? sufixIconData;
  final bool? obscureText;
  final ValueChanged<String>? onChanged;

  const textFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.sufixIconData,
    this.obscureText,
    this.onChanged,
  });

  //const textFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: onChanged,
        obscureText: obscureText!,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: Icon(
            prefixIconData,
            size: 18,
            color: Colors.blue[850],
          ),
          filled: true,
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue),
          ),
          suffixIcon: Icon(
            sufixIconData,
            size: 18,
            color: Colors.blue,
          ),
          labelStyle: TextStyle(color: Colors.blue),
        ));
  }
}
/*

*/