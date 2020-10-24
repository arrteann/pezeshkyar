import 'package:flutter/material.dart';
import 'package:pezeshkyar/models/profileData.dart';
import 'package:pezeshkyar/pages/homeScreen.dart';
import 'package:pezeshkyar/pages/loginScreen.dart';
import 'package:pezeshkyar/pages/profileScreen.dart';
import 'package:pezeshkyar/pages/splashScreen.dart';
import 'package:pezeshkyar/pages/validationScreen.dart';
import 'package:pezeshkyar/route/routing.dart';

main() {
  FluroRouting.setupRouter();
  runApp(new StractureApp());
}

class StractureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'پزشکیار',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: 'Vazir',
      ),
      initialRoute: 'home',
      onGenerateRoute: FluroRouting.router.generator,
    );
  }
}
