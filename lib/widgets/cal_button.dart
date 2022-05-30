import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final double textSize;
  final Function callBack;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CalButton(
      {required this.text,
      required this.fillColor,
      required this.textSize,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
          width: 80,
          height: 70,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(fillColor),
              ),
              child: Center(
                  child: InkWell(
                      /* onTap: () {
                        setState(() {
                          callBack;
                        });
                      }, */

                      onTap: () {
                        callBack(text);
                      },
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ))))),
    );
  }
}
