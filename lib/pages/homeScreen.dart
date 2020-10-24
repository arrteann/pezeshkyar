import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';
import 'package:pezeshkyar/components/CenterCard.dart';
import 'package:pezeshkyar/models/centerData.dart';
import 'package:pezeshkyar/models/profileData.dart';
import 'package:pezeshkyar/pages/centerScreen.dart';
import 'package:pezeshkyar/pages/newsScreen.dart';
import 'package:pezeshkyar/pages/profileScreen.dart';
import 'package:pezeshkyar/pages/tutorialScreen.dart';
import 'package:pezeshkyar/pages/updatecontentScreen.dart';

class homeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => homeScreenState();
}

class homeScreenState extends State<homeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  profileData profile = new profileData();
  centerData centers = new centerData();
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              new SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: Colors.white,
                title: new Text(
                  'پزشکیار',
                  style:
                      new TextStyle(fontSize: 27, color: PriColor.thirdColor),
                ),
                elevation: 5,
                centerTitle: true,
                leading: new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'profile');
                  },
                  child: new Container(
                      margin: EdgeInsets.all(10),
                      child: new Container(
                        padding: const EdgeInsets.only(
                            right: 10, top: 10, bottom: 10),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                image: NetworkImage(profile.avatarUrl))),
                      )),
                ),
                bottom: new TabBar(
                  indicatorColor: PriColor.thirdColor,
                  controller: tabController,
                  labelColor: PriColor.darkoneColor,
                  indicatorPadding: const EdgeInsets.only(top: 20),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  labelStyle:
                      new TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  isScrollable: true,
                  tabs: <Widget>[
                    new Tab(
                      text: 'مراکز',
                    ),
                    new Tab(
                      text: 'اخبار',
                    ),
                    new Tab(
                      text: 'آموزش',
                    ),
                    new Tab(
                      text: 'مطالب روز',
                    ),
                  ],
                ),
              )
            ];
          },
          body: new TabBarView(
            controller: tabController,
            children: <Widget>[
              centerScreen(),
              newsScreen(),
              tutorialScreen(),
              updateContentScreen(),
            ],
          )),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('search');
        },
        backgroundColor: PriColor.fifthColor,
        child: new Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
