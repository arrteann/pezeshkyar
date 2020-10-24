import 'package:flutter/material.dart';
import 'package:pezeshkyar/models/centerData.dart';

class CenterCard extends StatelessWidget {
  final centerData getData;
  CenterCard({@required this.getData});
  @override
  Widget build(BuildContext context) {
    var screenDevice = MediaQuery.of(context).size;
    return new GestureDetector(
      onTap: () {},
      child: new Container(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
        width: screenDevice.width,
        height: 80,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0XFF45EBA5),
                  Color(0XFF6DDABE),
                ]),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              new BoxShadow(
                  color: Color.fromRGBO(000, 000, 000, 0.2),
                  blurRadius: 6,
                  offset: Offset(0, 3))
            ]),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(top: 5),
              child: new Text(
                getData.centerName,
                style: new TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: new Text(
                '${getData.countCenter} ' + 'مرکز',
                style: new TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
