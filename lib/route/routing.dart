import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:pezeshkyar/pages/homeScreen.dart';
import 'package:pezeshkyar/pages/loginScreen.dart';
import 'package:pezeshkyar/pages/profileScreen.dart';
import 'package:pezeshkyar/pages/searchScreen.dart';
import 'package:pezeshkyar/pages/splashScreen.dart';
import 'package:pezeshkyar/pages/validationScreen.dart';

class FluroRouting {
  static Router router = Router();

  static Handler _splashHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> parms) =>
          new Directionality(
              textDirection: TextDirection.rtl, child: splashScreen()));

  static Handler _homeHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> parms) =>
          new Directionality(
            textDirection: TextDirection.rtl,
            child: new homeScreen(),
          ));

  static Handler _profileHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> parms) =>
          new Directionality(
            textDirection: TextDirection.ltr,
            child: new profileScreen(),
          ));

  static Handler _loginHander = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> parms) =>
          new Directionality(
            textDirection: TextDirection.rtl,
            child: new loginScreen(),
          ));

  static Handler _verifyHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> parms) =>
        new Directionality(
      textDirection: TextDirection.rtl,
      child: new verifyScreen(),
    ),
  );

  static Handler _searchHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> parms) =>
          new Directionality(
            textDirection: TextDirection.rtl,
            child: new searchScreen(),
          ));

  static void setupRouter() {
    router.define('home',
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
    router.define('splash',
        handler: _splashHandler, transitionType: TransitionType.inFromRight);
    router.define('profile',
        handler: _profileHandler, transitionType: TransitionType.fadeIn);
    router.define('login',
        handler: _loginHander, transitionType: TransitionType.inFromRight);
    router.define('verify',
        handler: _verifyHandler, transitionType: TransitionType.inFromRight);
    router.define('search',
        handler: _searchHandler,
        transitionType: TransitionType.cupertinoFullScreenDialog);
  }
}
