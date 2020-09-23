import 'package:flutter/material.dart';
import 'package:flut_new_proj/icons/app_icons.dart';

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
    return
      Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(AppIcons.chart_bar),
              title: Text("wdqdqs")
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.os),
              title: Text("sdwdwd")
            ),
          ],
        ),
    );
  }
}
