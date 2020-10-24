import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';

class buttonFields extends StatelessWidget{
  final String text;
  buttonFields({@required this.text});
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 140 ,
      height: 45,
      decoration: new BoxDecoration(
        color: PriColor.secondColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [new BoxShadow(
          color: Color.fromRGBO(000, 000, 000, 0.2),
          blurRadius: 6,
          offset: Offset(0,3)
        )],
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            text,
            style: new TextStyle(
              fontSize: 19,
              color: Colors.white
            )
          )
        ],
      )
    );
  }
}