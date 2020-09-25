import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

int currentScreen = 2;
double wight;

SvgPicture device =
    SvgPicture.asset("assets/icons/DevicePress.svg", width: wight);
SvgPicture store = SvgPicture.asset(
  "assets/icons/StorePress.svg",
  width: wight,
);
SvgPicture os = SvgPicture.asset("assets/icons/OsOnPress.svg", width: wight);
SvgPicture processes =
    SvgPicture.asset("assets/icons/ProcPress.svg", width: wight);
SvgPicture statistics =
    SvgPicture.asset("assets/icons/StatPress.svg", width: wight);

void main() {
  runApp(Game());
}

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ем детей онлайн",
      theme: ThemeData(primaryColor: Colors.black),
      home: AnimatedSplashScreen(
        splash: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset("assets/icons/logo.svg"),
          ],
        ),
        splashIconSize: 100,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black,
        nextScreen:  AnimatedSplashScreen(
          splash: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                  "UR MOM GAY",
                  style: TextStyle(color: Colors.white, fontFamily: "Quantico")
              ),
            ],
          ),
          splashIconSize: 300,
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: Colors.black,
          nextScreen: Home(),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _ButtonBar createState() => _ButtonBar();
}

class _ButtonBar extends State<Home> {
  @override
  Widget build(BuildContext context) {
    wight = MediaQuery.of(context).size.width / 5;

    final tabs = [
      Container(
        child: Center(
          child: Text(
            "DEVICE",
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
      Container(
        child: Center(
          child: Text(
            "STORE",
            style: TextStyle(color: Colors.lightBlueAccent[100], fontFamily: "Quantico"),
          ),
        ),
      ),
      Container(
        child: Center(
          child: Text(
            "OS",
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
      Container(
        child: Center(
          child: Text(
            "PROCESSES",
            style: TextStyle(color: Colors.lightBlueAccent[100]),
          ),
        ),
      ),
      Container(
        child: Center(
          child: Text(
            "STATISTIC",
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
    ];

    void changeColorButton(int index) {
      if (index != currentScreen) {
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
              statistics = SvgPicture.asset("assets/icons/StatOnPress.svg",
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
              statistics = SvgPicture.asset("assets/icons/StatPress.svg",
                  width: MediaQuery.of(context).size.width / 5);
              break;
          }

          currentScreen = index;
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: tabs[currentScreen],
      bottomNavigationBar: Stack(alignment: Alignment.bottomCenter, children: [
        Row(
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
      ]),
    );
  }
}
