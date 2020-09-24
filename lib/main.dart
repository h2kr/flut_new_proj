import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Game());
}

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ем детей онлайн ",
      theme: ThemeData(primaryColor: Colors.black),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _StateHome createState() => _StateHome();
}

class _StateHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int currentScreen = 2;


    SvgPicture device = SvgPicture.asset(
      "assets/icons/DevicePress.svg",
      width: MediaQuery.of(context).size.width / 5,
    );
    SvgPicture store = SvgPicture.asset(
      "assets/icons/StorePress.svg",
      width: MediaQuery.of(context).size.width / 5,
    );
    SvgPicture os = SvgPicture.asset(
      "assets/icons/OsOnPress.svg",
      width: MediaQuery.of(context).size.width / 5,
    );
    SvgPicture processes = SvgPicture.asset(
      "assets/icons/ProcPress.svg",
      width: MediaQuery.of(context).size.width / 5,
    );
    SvgPicture statistics = SvgPicture.asset(
      "assets/icons/StatPress.svg",
      width: MediaQuery.of(context).size.width / 5,
    );

    void changeColorButton(int index) {
      setState(() {
        switch (index) {
          case 0:
            device = SvgPicture.asset("assets/icons/DeviceOnPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;
          case 1:
            store = SvgPicture.asset("assets/icons/StoreOnPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;

          case 2:
            os = SvgPicture.asset("assets/icons/OsOnPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;

          case 3:
            processes = SvgPicture.asset("assets/icons/ProcOnPressed.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;

          case 4:
            device = SvgPicture.asset("assets/icons/StatOnPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;
        }

        switch (currentScreen) {
          case 0:
            device = SvgPicture.asset("assets/icons/DevicePress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;
          case 1:
            store = SvgPicture.asset("assets/icons/StorePress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;

          case 2:
            os = SvgPicture.asset("assets/icons/OsPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;

          case 3:
            processes = SvgPicture.asset("assets/icons/ProcPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;

          case 4:
            device = SvgPicture.asset("assets/icons/StatPress.svg",
                width: MediaQuery.of(context).size.width / 5);
            break;
        }

        currentScreen = index;
      });
    }

    return Scaffold(
        body: Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              changeColorButton(0);
            },
            child: device,
          ),
          GestureDetector(
            onTap: () {
              changeColorButton(1);
            },
            child: ButtonTheme(
              minWidth: 0,
              child: store,
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColorButton(2);
            },
            child: ButtonTheme(
              minWidth: 0,
              child: os,
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColorButton(3);
            },
            child: ButtonTheme(
              minWidth: 0,
              child: processes,
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColorButton(4);
            },
            child: ButtonTheme(
              minWidth: 0,
              child: statistics,
            ),
          ),
        ],
      ),
    ));
  }
}
