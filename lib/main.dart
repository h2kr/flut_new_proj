import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flut_new_proj/screens/hardware.dart';
import 'package:flut_new_proj/screens/os.dart';
import 'package:flut_new_proj/screens/proc.dart';
import 'package:flut_new_proj/screens/statistic.dart';
import 'package:flut_new_proj/screens/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

int currentScreen = 2;
double width;

SvgPicture device =
    SvgPicture.asset("assets/icons/DevicePress.svg", width: width);
SvgPicture store = SvgPicture.asset(
  "assets/icons/StorePress.svg",
  width: width,
);
SvgPicture os = SvgPicture.asset("assets/icons/OsOnPress.svg", width: width);
SvgPicture processes =
    SvgPicture.asset("assets/icons/ProcPress.svg", width: width);
SvgPicture statistics =
    SvgPicture.asset("assets/icons/StatPress.svg", width: width);

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
          nextScreen: Home()),
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
    width = MediaQuery.of(context).size.width / 5;

    final tabs = [
      hardwareScreen(),
      storeScreen(),
      osScreen(),
      processesScreen(),
      statisticScreen(),
    ];

    void changeColorButton(int index) {
      if (index != currentScreen) {
        setState(() {
          switch (index) {
            case 0:
              device = SvgPicture.asset("assets/icons/DeviceOnPress.svg",
                  width: width);
              break;
            case 1:
              store = SvgPicture.asset("assets/icons/StoreOnPress.svg",
                  width: width);
              break;

            case 2:
              os = SvgPicture.asset("assets/icons/OsOnPress.svg", width: width);
              break;

            case 3:
              processes = SvgPicture.asset("assets/icons/ProcOnPressed.svg",
                  width: width);
              break;

            case 4:
              statistics = SvgPicture.asset("assets/icons/StatOnPress.svg",
                  width: width);
              break;
          }

          switch (currentScreen) {
            case 0:
              device = SvgPicture.asset("assets/icons/DevicePress.svg",
                  width: width);
              break;
            case 1:
              store =
                  SvgPicture.asset("assets/icons/StorePress.svg", width: width);
              break;

            case 2:
              os = SvgPicture.asset("assets/icons/OsPress.svg", width: width);
              break;

            case 3:
              processes =
                  SvgPicture.asset("assets/icons/ProcPress.svg", width: width);
              break;

            case 4:
              statistics =
                  SvgPicture.asset("assets/icons/StatPress.svg", width: width);
              break;
          }

          currentScreen = index;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF101820),
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "B 1000",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Quantico",
                            color: Colors.greenAccent),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "B 129",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Quantico",
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "H2KR_1337",
                          style:
                              TextStyle(fontSize: 13, fontFamily: "Quantico"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset("assets/icons/vpn_on.svg")),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.white,
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF223344),
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
