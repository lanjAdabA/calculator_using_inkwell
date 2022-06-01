import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final double textSize;
  final Function callBack;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CalButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      required this.textSize,
      required this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => callBack(text)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
            width: 80,
            height: 70,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(fillColor),
                ),
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(
                    fontSize: textSize,
                    fontWeight: FontWeight.bold,
                  ),
                )))),
      ),
    );
  }

  /*  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(fillColor),
        ),
        child: Center(
          child: TextButton(
              onPressed: (() => callBack(text)),
              child: Text(
                text,
                style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              )),
        ),
      ),
    );
  } */
}
