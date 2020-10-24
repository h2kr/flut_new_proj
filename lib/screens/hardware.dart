import 'package:flut_new_proj/components/hard/cpu.dart';
import 'package:flut_new_proj/components/hard/memory.dart';
import 'package:flut_new_proj/components/hard/ram.dart';
import 'package:flut_new_proj/components/hard/router.dart';
import 'package:flut_new_proj/components/soft/antivirus.dart';
import 'package:flut_new_proj/components/soft/cracker.dart';
import 'package:flut_new_proj/components/soft/encryptor.dart';
import 'package:flut_new_proj/components/soft/firewall.dart';
import 'package:flut_new_proj/components/soft/spyware.dart';
import 'package:flut_new_proj/data/data.dart';
import 'package:flut_new_proj/logic/device.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../body.dart';
import '../main.dart';

Device device;
String _deviceName = device.name;

String _ramState = "STABLE";
String _cpuState = "STABLE";
String _memoryState = "STABLE";
String _networkState = "STABLE";

String _ramWork;
String _cpuWork;
String _memoryWork;
String _networkWork;

TextStyle _titleStyle = TextStyle(
    fontFamily: Constants.quantico, color: Constants.white, fontSize: 24);
TextStyle _defaultSyle = TextStyle(
    fontFamily: Constants.quantico, color: Constants.white, fontSize: 18);

class Hardware extends StatefulWidget {
  @override
  HardwareState createState() => HardwareState();
}

class HardwareState extends State<Hardware> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    device = Provider.of<Data>(context, listen: false).device;
    _ramWork =
        Provider.of<Data>(context, listen: false).device.ram.ram.toString() +
            " GB";
    _cpuWork = "PP " +
        Provider.of<Data>(context, listen: false).device.cpu.cpuPP.toString() +
        ", Cores " +
        Provider.of<Data>(context, listen: false)
            .device
            .cpu
            .cpuNumOfCores
            .toString();
    _memoryWork = " " +
        Provider.of<Data>(context, listen: false).device.memory.gb.toString() +
        " GB";
    _networkWork = " " +
        Provider.of<Data>(context, listen: false)
            .device
            .router
            .speed
            .toString() +
        " Mbit/S";

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
      child: Column(
        children: [
          _deviceTitle(),
          _monitorSystem(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/ram.svg"),
              SvgPicture.asset("assets/icons/ram.svg"),
              SvgPicture.asset("assets/icons/ram.svg"),
              SvgPicture.asset("assets/icons/ram.svg"),
              SvgPicture.asset("assets/icons/ram.svg"),
              SvgPicture.asset("assets/icons/ram.svg"),
            ],
          )
        ],
      ),
    );
  }

  Widget _deviceTitle() {
    return Container(
        alignment: Alignment.center,
        color: Constants.bars,
        child: Text(_deviceName, style: _titleStyle));
  }

  Widget _monitorSystem() {
    return Stack(
      children: [
        Container(
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
            alignment: Alignment.bottomRight,
            child: Text(
                "$_ramState\n"
                "$_cpuState\n"
                "$_memoryState\n"
                "$_networkState",
                style: _defaultSyle)),
      ],
    );
  }
}
