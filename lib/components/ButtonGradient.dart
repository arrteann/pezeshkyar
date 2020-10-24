import 'package:flutter/material.dart';

class buttonGradient extends StatelessWidget {
  final String text;
  buttonGradient({@required this.text});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0XFF45EBA5),
                Color(0XFF6DDABE),
              ]),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
                color: Color.fromRGBO(000, 000, 000, 0.2),
                blurRadius: 6,
                offset: new Offset(0, 3))
          ]),
      child: Center(
        child: new Text(
          text,
          style: new TextStyle(
              fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
