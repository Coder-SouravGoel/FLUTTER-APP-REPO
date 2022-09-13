import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //const ButtonWidget({super.key});

  final String? title;
  final bool? hasBorder;

  ButtonWidget({
    this.title,
    this.hasBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder! ? Colors.white : Colors.blue,
          border: hasBorder!
              ? Border.all(color: Colors.blue, width: 1.0)
              : Border.fromBorderSide(BorderSide.none),
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 60.0,
            child: Center(
              child: Text(
                title!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
