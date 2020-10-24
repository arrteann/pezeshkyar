import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';
import 'package:pezeshkyar/models/profileData.dart';

class Boxdetail extends StatelessWidget {
  final String firstValue;
  final String secondValue;
  Boxdetail({@required this.firstValue, @required this.secondValue});
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
            color: Color.fromRGBO(000, 000, 000, 0.2),
            offset: new Offset(0, 3),
            blurRadius: 6),
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            firstValue,
            style: new TextStyle(
              fontSize: 17,
              color: PriColor.fourthColor,
            ),
          ),
          new Text(
            secondValue,
            style: new TextStyle(
              fontSize: 17,
              color: PriColor.fourthColor,
            ),
          ),
        ],
      ),
    );
  }
}
