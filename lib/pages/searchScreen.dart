import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';

class searchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new searchScreenState();
}

class searchScreenState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: new Text(
          'پزشکیار',
          style: new TextStyle(fontSize: 27, color: PriColor.thirdColor),
        ),
        elevation: 0,
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        backgroundColor: PriColor.fifthColor,
        child: new Icon(Icons.arrow_back),
      ),
    );
  }
}
