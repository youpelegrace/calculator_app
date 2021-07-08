import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard(
      {required this.numb,
      required this.textColor,
      required this.textSize,
      required this.callBack});
  final String numb;
  final Color textColor;
  final double textSize;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        height: 70,
        width: 78,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

          child: Text(numb,
              style: TextStyle(color: textColor, fontSize: textSize)),
          onPressed: () => callBack(numb),
          color: Colors.grey[900],
          // ignore: prefer_const_constructors
        ),
      ),
    );
  }
}
