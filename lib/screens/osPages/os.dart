import 'package:flut_new_proj/main.dart';
import 'package:flut_new_proj/screens/hardware.dart';
import 'package:flut_new_proj/screens/osPages/osHome.dart';
import 'package:flut_new_proj/screens/osPages/scan.dart';
import 'package:flut_new_proj/screens/osPages/trad.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../body.dart';
import 'apps.dart';
import 'bank.dart';
import 'logs.dart';
import 'mess.dart';


class OS extends StatefulWidget {
  @override
  _OsState createState() => _OsState();
}





class _OsState extends State<OS> {

  static int _currentWindow = 0;

  final _windows = [

    OSScan(),
    OSMessages(),
    OSApps(),
    OSBank(),
    OSTrade(),
    OSLogs()
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: OSHome()
    );
  }


}



Widget messages() {
  return Stack(
   children: [
     Container(
       width: 100,
       height: 100,
       color: Colors.black,
     )
   ],
  );
}


Widget osMessages() {
return Text("wweweq");
}

Widget osScan() {
  return Text("wweweq");
}

Widget osApps() {
  return Text("wweweq");
}

Widget osBank() {
  return Text("wweweq");
}

Widget osTrad() {
  return Text("wweweq");
}

Widget osLogs() {
  return Text("wweweq");
}