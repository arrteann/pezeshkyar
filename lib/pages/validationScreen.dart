import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';
import 'package:pezeshkyar/components/Button.dart';
import 'package:pezeshkyar/components/InputField.dart';
import 'package:pezeshkyar/pages/homeScreen.dart';
import 'package:validators/validators.dart';

class verifyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new verifyScreenState();
}

class verifyScreenState extends State<verifyScreen>
    with SingleTickerProviderStateMixin {
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String number;
  _onSavedNumber(String value) {
    number = value;
  }

  @override
  Widget build(BuildContext context) {
    var deviceScreen = MediaQuery.of(context).size;
    return new GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
          body: new Container(
            width: deviceScreen.width,
            height: deviceScreen.height,
            color: Colors.white,
            child: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new SizedBox(
                      height: deviceScreen.height * 0.15,
                    ),
                    new Image(
                      image: new AssetImage("assets/images/verify_icon.png"),
                    ),
                    new SizedBox(
                      height: 20,
                    ),
                    new Form(
                      key: formKey,
                      child: formField(
                        text: 'کد ۶ رقمی خود را وارد کنید',
                        length: 6,
                        saved: _onSavedNumber,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'لطفا فرم را پر کنید';
                          }
                          if (!isNumeric(value)) {
                            return "کد احراز هویت خود را درست وارد کنید";
                          }
                          if (value.length < 5) {
                            return 'تعداد رقم های کد احراز هویت را به درستی وارد کنید';
                          }
                        },
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    new SizedBox(
                      height: 20,
                    ),
                    new GestureDetector(
                      onTap: () async {
                        // TODO: Send To Server
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();
                          // TODO:send to server and Authencation
                        }
                      },
                      child: new buttonFields(
                        text: 'تایید',
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
