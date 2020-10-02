import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

String _deviceName = "POHUY 7Z";

String _ramName = "8GB";
String _cpuName = "INTERDOOR i9";
String _memoryName = "128GB";
String _networkName = "10Mbit/S";

String _ramState = "STABLE";
String _cpuState = "STABLE";
String _memoryState = "STABLE";
String _networkState = "WARNING";

String _ramWork = "6.1/8.0 GB";
String _cpuWork = "78%";
String _memoryWork = "58/128 GB";
String _networkWork = "50 Kbit/S";

TextStyle _titleStyle = TextStyle(
    fontFamily: Constants.quantico, color: Constants.white, fontSize: 24);
TextStyle _defaultSyle = TextStyle(
    fontFamily: Constants.quantico, color: Constants.white, fontSize: 18);



Widget hardwareScreen() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
    child: Column(
      children: [
        _deviceTitle(),
        _monitorSystem(),
      ],
    ),
  );
}

Widget _deviceTitle() {
  return Container(
      alignment: Alignment.center,
      width: widthScreen,
      color: Constants.bars,
      child: Text(_deviceName, style: _titleStyle));
}

Widget _monitorSystem() {
  return Stack(
    children: [
      Container(
          width: widthScreen,
          alignment: Alignment.bottomLeft,
          color: Constants.bars,
          child: Text(
              "RAM : $_ramWork \n"
              "CPU : $_cpuWork\n"
              "MEMORY:$_memoryWork\n"
              "NETWORK : $_networkWork",
              style: _defaultSyle)),
      Container(
          width: widthScreen,
          alignment: Alignment.topRight,
          child: Text(
              "$_ramState\n"
              "$_cpuState\n"
              "$_memoryState\n"
              "$_networkState",
              style: _defaultSyle)),
    ],
  );
}


