import 'package:flut_new_proj/screens/osPages/mess.dart';
import 'package:flut_new_proj/screens/osPages/scan.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../body.dart';


SvgPicture _title = SvgPicture.asset(
  "assets/icons/os_title.svg",
  width: wScreen / 2,
);

Widget _buttonScan =
_createButton(SvgPicture.asset("assets/icons/os_scan.svg"), "SCAN DEVICE");
Widget _buttonMessage =
_createButton(SvgPicture.asset("assets/icons/os_message.svg"), "MESSAGES");
Widget _buttonApps =
_createButton(SvgPicture.asset("assets/icons/os_apps.svg"), "APPS");
Widget _buttonBank =
_createButton(SvgPicture.asset("assets/icons/os_bank.svg"), "BANK ACCOUNT");
Widget _buttonLogs =
_createButton(SvgPicture.asset("assets/icons/os_logs.svg"), "LOGS");
Widget _buttonTrade = _createButton(
    SvgPicture.asset("assets/icons/os_trade.svg"), "TRADING FLOOR");



class OSHome extends StatefulWidget {
  @override
  _OSHomeState createState() => _OSHomeState();

}

class _OSHomeState extends State<OSHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
      child: ListView(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => OSMessages())),
                child: _buttonScan,
              ),
              GestureDetector(
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => OSMessages())),
                child: _buttonMessage,
              ),
              _buttonApps,
              _buttonBank,
              _buttonTrade,
              _buttonLogs
            ],
          ),
        ],
      ),
    );
  }

}

Widget _createButton(SvgPicture icon, String title) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            color: Constants.black,
            height: 70,
            child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: icon,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Constants.white,
                      fontSize: 20,
                      fontFamily: Constants.quantico),
                )),
          )
        ],
      ),
      Container(
        height: 1,
      )
    ],
  );
}