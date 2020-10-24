import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';
import 'package:pezeshkyar/components/Boxdetail.dart';
import 'package:pezeshkyar/components/ButtonGradient.dart';
import 'package:pezeshkyar/models/profileData.dart';
import 'package:pezeshkyar/pages/homeScreen.dart';

class profileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => profileScreenState();
}

class profileScreenState extends State<profileScreen> {
  profileData profile = new profileData();
  @override
  Widget build(BuildContext context) {
    var avatarSize = MediaQuery.of(context).size.width * 0.5;

    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
          body: new ListView(
            padding: const EdgeInsets.only(top: 5),
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(top: 30, left: 10, right: 10),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: new Icon(
                            Icons.arrow_back,
                            color: PriColor.secondColor,
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {},
                          child: new Text(
                            "خروج",
                            style: new TextStyle(
                                color: PriColor.secondColor, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    // Avatar
                    new GestureDetector(
                      onTap: () {
                        print(MediaQuery.of(context).size.width);
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: avatarSize,
                        width: avatarSize,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                // TODO:CHANGED
                                image: new NetworkImage(profile.avatarUrl))),
                      ),
                    ),
                    // Text Field
                    new GestureDetector(
                        onTap: () {},
                        child: new Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: new Text(
                            // TODO:CHANGED
                            profdata[0].name,
                            style: new TextStyle(
                                fontSize: 25,
                                color: PriColor.fourthColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    // Text Format
                    new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: new GestureDetector(
                        onTap: () {},
                        child: new Boxdetail(
                          firstValue: "شماره تماس",
                          secondValue: profdata[0].number,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: new GestureDetector(
                        onTap: () {},
                        child: new Boxdetail(
                          firstValue: "سن",
                          secondValue: profdata[0].age,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: new GestureDetector(
                        onTap: () {},
                        child: new Boxdetail(
                          firstValue: "ایمیل",
                          secondValue: profdata[0].email,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: new GestureDetector(
                        onTap: () {},
                        child: new Boxdetail(
                          firstValue: "شهر",
                          secondValue: profdata[0].city,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: new GestureDetector(
                        onTap: () {},
                        child: new Boxdetail(
                          firstValue: "کد ملی",
                          secondValue: profdata[0].personalcode,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                      child: new GestureDetector(
                        onTap: () {
                          // TODO:Send to Server Server
                          // TODO:Add Conditional for Check Saved or not
                          Navigator.of(context).pop();
                        },
                        child: new buttonGradient(
                          text: "ذخیره",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
