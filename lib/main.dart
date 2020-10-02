import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flut_new_proj/screens/hardware.dart';
import 'package:flut_new_proj/screens/os.dart';
import 'package:flut_new_proj/screens/proc.dart';
import 'package:flut_new_proj/screens/statistic.dart';
import 'package:flut_new_proj/screens/store.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

int currentScreen = 2;


double wScreen;
double widthIconBnb = wScreen - 5;
double widthIconBnbMain = wScreen + 5;
double widthScreen =  (wScreen + 5) * 5;


SvgPicture device =
    SvgPicture.asset("assets/svg_bnb/bnb_hardware.svg", width: widthIconBnb);
SvgPicture store =
    SvgPicture.asset("assets/svg_bnb/bnb_store.svg", width: widthIconBnb);
SvgPicture os =
    SvgPicture.asset("assets/svg_bnb/bnb_os.svg", width: widthIconBnbMain);
SvgPicture processes =
    SvgPicture.asset("assets/svg_bnb/bnb_processes.svg", width: widthIconBnb);
SvgPicture statistics =
    SvgPicture.asset("assets/svg_bnb/bnb_profile.svg", width: widthIconBnb);

void main() {
  runApp(Game());
}

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.theme,
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
    wScreen = MediaQuery.of(context).size.width / 5;

    final bg = [
      Constants.bg,
      Constants.bg,
      Colors.black,
      Constants.bg,
      Constants.bg
    ];

    final tabs = [
      Hardware(),
      Store(),
      OS(),
      Processes(),
      statisticScreen(),
    ];



    void changeColorButton(int index) {
      if (index != currentScreen) {
        setState(() {

          switch (currentScreen) {
            case 0:
              device = SvgPicture.asset("assets/svg_bnb/bnb_hardware.svg",
                  width: widthIconBnb);
              break;
            case 1:
              store =
                  SvgPicture.asset("assets/svg_bnb/bnb_store.svg", width: widthIconBnb);
              break;

            case 2:
              os = SvgPicture.asset("assets/svg_bnb/bnb_os.svg", width: widthIconBnb);
              break;

            case 3:
              processes =
                  SvgPicture.asset("aasets/svg_bnb/bnb_processes.svg", width: widthIconBnb);
              break;

            case 4:
              statistics =
                  SvgPicture.asset("assets/svg_bnb/bnb_profile.svg", width: widthIconBnb);
              break;
          }

          switch (index) {
            case 0:
              device = SvgPicture.asset("assets/svg_bnb/bnb_hardware.svg",
                  width: widthIconBnbMain);
              break;
            case 1:
              store = SvgPicture.asset("assets/svg_bnb/bnb_store.svg",
                  width: widthIconBnbMain);
              break;

            case 2:
              os = SvgPicture.asset("assets/svg_bnb/bnb_os.svg",
                  width: widthIconBnbMain);
              break;

            case 3:
              processes = SvgPicture.asset("assets/svg_bnb/bnb_processes.svg",
                  width: widthIconBnbMain);
              break;

            case 4:
              statistics = SvgPicture.asset("assets/svg_bnb/bnb_profile.svg",
                  width: widthIconBnbMain);
              break;
          }

          currentScreen = index;
        });
      }
    }

    Widget bnb() {
      return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: Constants.black,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => changeColorButton(0),
                    child: device,
                  ),
                  GestureDetector(
                    onTap: () => changeColorButton(1),
                    child: store,
                  ),
                  GestureDetector(
                    onTap: () => changeColorButton(2),
                    child: os,
                  ),
                  GestureDetector(
                    onTap: () => changeColorButton(3),
                    child: processes,
                  ),
                  GestureDetector(
                    onTap: () => changeColorButton(4),
                    child: statistics,
                  ),
                ],
              ),
            ),
          ]);
    }


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.bars,
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
      backgroundColor:  bg[currentScreen],
      body: tabs[currentScreen],
      bottomNavigationBar: bnb(),

    );


  }
}
