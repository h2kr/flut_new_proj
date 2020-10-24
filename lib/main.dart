import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flut_new_proj/screens/hardware.dart';
import 'package:flut_new_proj/screens/proc.dart';
import 'package:flut_new_proj/screens/statistic.dart';
import 'package:flut_new_proj/screens/store.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'body.dart';
import 'data/data.dart';

void main() {
  runApp(Game());
  kostyl();
}

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
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
      ),
    );
  }
}
