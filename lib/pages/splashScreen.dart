import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';

class splashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => splashScreenState();
}

class splashScreenState extends State<splashScreen> with SingleTickerProviderStateMixin{
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  navigateToLogin(){
    Navigator.pushReplacementNamed(context, '/login');
  }
  navigateToHome(){
    Navigator.pushReplacementNamed(context, '/');
  }
  @override
  void initState() {
    super.initState();
    authLogin();
      }
      @override
      Widget build(BuildContext context) {
        var deviceSize = MediaQuery.of(context).size;
        return Scaffold(
          key: _scaffoldKey,
          body: new Container(
            height: deviceSize.height,
            width: deviceSize.width,
            color: PriColor.primaryColor,
            child: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      height: 200,
                      width: 200,
                      child: new Image.asset("assets/images/splash_icon.png"),
                    ),
                    new Text(
                      'پـــــزشــــکیــــار',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40
                      ),
                    ),
                    new Text(
                      'زود،تند،سریع نوبت بگیر',
                      style: new TextStyle(
                        color:Color(0XFFFFEEFF),
                        fontSize: 19
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }
    
      authLogin() async{
        // TODO: Add shared_preferences
        if(await checkInternet()){
          // TODO: Check Authentication
        } else{
          _scaffoldKey.currentState.showSnackBar(
            new SnackBar(
              duration: new Duration(hours: 2),
              backgroundColor: PriColor.redoneColor,
              content: new GestureDetector(
                onTap: (){
                  _scaffoldKey.currentState.hideCurrentSnackBar();
                  authLogin();
                },
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "لطفا اینترنت تلفن خود را چک کنید",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Vazir'
                      )
                      ),
                    new Icon(Icons.signal_wifi_off,color: Colors.white,)
                  ],
                ),
              ),
            )
          );
        }
      }
      Future<bool> checkInternet() async{
        var connectivityResult = await (Connectivity().checkConnectivity());
        return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
      }
}
