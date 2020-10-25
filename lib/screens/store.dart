import 'package:flut_new_proj/components/hard/cpu.dart';
import 'package:flut_new_proj/components/hard/memory.dart';
import 'package:flut_new_proj/components/hard/ram.dart';
import 'package:flut_new_proj/components/hard/router.dart';
import 'package:flut_new_proj/data/data.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flut_new_proj/logic/device.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../body.dart';
import 'hardware.dart';

List<CPU> _cpuList = List<CPU>();
List<Memory> _memoryList = List<Memory>();
List<Routerr> _routerList = List<Routerr>();
List<Ram> _ramList = List<Ram>();

int _countHardGods =
    _cpuList.length + _memoryList.length + _ramList.length + _routerList.length;

List<Widget> _hardGods = List<Widget>();
List<Widget> _softGods = List<Widget>();

double _titleFontSize = 19;
SvgPicture _ad = SvgPicture.asset("assets/icons/ad.svg", width: wScreen);
SvgPicture _titleBar =
    SvgPicture.asset("assets/icons/store_title_bar.svg", width: wScreen);
SvgPicture _container =
    SvgPicture.asset("assets/icons/store_container.svg", width: wScreen);
double _defaultPadding = 8;
SvgPicture _ram = SvgPicture.asset("assets/icons/ram.svg");
SvgPicture _cpu = SvgPicture.asset("assets/icons/cpu.svg");
SvgPicture _memory = SvgPicture.asset("assets/icons/memory.svg");
SvgPicture _router = SvgPicture.asset("assets/icons/router.svg");

SvgPicture _antivirus = SvgPicture.asset("assets/icons/antivir.svg");
SvgPicture _spyware = SvgPicture.asset("assets/icons/spyware.svg");
SvgPicture _cracking = SvgPicture.asset("assets/icons/passcrack.svg");
SvgPicture _firewall = SvgPicture.asset("assets/icons/fw.svg");
SvgPicture _encryptor = SvgPicture.asset("assets/icons/passcrack.svg");

void kostyl() {
  _cpuList.add(CPU(1300, 2));
  _cpuList.add(CPU(1500, 2));
  _cpuList.add(CPU(1800, 2));
  _ramList.add(Ram(2));
  _ramList.add(Ram(4));
  _ramList.add(Ram(8));
  _memoryList.add(Memory(32));
  _memoryList.add(Memory(64));
  _memoryList.add(Memory(124));
  _routerList.add(Routerr(10, 10));
  _routerList.add(Routerr(15, 15));

  for (int i = 0; i < _ramList.length; i++) {
    _hardGods.add(GoodsBar(_ram, "RAM", _ramList[i].ram.toString() + " gb",
        (10 * ((i + 1) * 10)), _hardGods.length, _ramList[i]));
  }

  for (int i = 0; i < _cpuList.length; i++) {
    _hardGods.add(GoodsBar(
        _cpu,
        "CPU",
        "PP: " +
            _cpuList[i].cpuPP.toString() +
            ", Cores: " +
            _cpuList[i].cpuNumOfCores.toString(),
        (10 * ((i + 2) * 10)),
        _hardGods.length,
        _cpuList[i]));
  }

  for (int i = 0; i < _memoryList.length; i++) {
    _hardGods.add(GoodsBar(
        _memory,
        "Memory",
        _memoryList[i].gb.toString() + " gb",
        (10 * ((i + 1) * 12)),
        _hardGods.length,
        _memoryList[i]));
  }

  for (int i = 0; i < _routerList.length; i++) {
    _hardGods.add(GoodsBar(
        _router,
        "Router",
        "Speed: " + _routerList[i].speed.toString() + " Mbit/S",
        (12 * ((i + 10) * 15)),
        _hardGods.length,
        _routerList[i]));
  }
}

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print(context.watch<Data>().protectBtc.toString());

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
      child: ListView(
        children: [
          Column(
            children: [
              _titleBarStore("HARDWARE"),
              Column(
                children: _hardGods,
              ),
              _titleBarStore("SOFTWARE"),
              GoodsBar(_antivirus, "Antivirus", "+1 lvl", 100,
                  _hardGods.length + 100, null),
              GoodsBar(_encryptor, "Encryptor", "+1 lvl", 100,
                  _hardGods.length + 200, null),
              GoodsBar(_firewall, "Firewall", "+1 lvl", 100,
                  _hardGods.length + 300, null),
              GoodsBar(_spyware, "Spyware", "+1 lvl", 100,
                  _hardGods.length + 400, null),
              GoodsBar(_cracking, "Cracking", "+1 lvl", 100,
                  _hardGods.length + 500, null),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _titleBarStore(String title) {
  return Container(
      child: Stack(
    children: [
      Container(
          color: Constants.red,
          alignment: Alignment.topCenter,
          child: Text(
            title,
            style: TextStyle(
                fontFamily: Constants.roboto,
                color: Constants.bars,
                fontSize: _titleFontSize),
          )),
    ],
  ));
}

class GoodsBar extends StatelessWidget {
  SvgPicture goods;
  String title;
  String description;
  int price;
  int index;
  Object object;

  GoodsBar(this.goods, this.title, this.description, this.price, this.index,
      this.object);

  @override
  Widget build(BuildContext context) {
    print(context.watch<Data>().protectBtc.toString());
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
          color: Constants.bars,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(_defaultPadding),
                child: goods,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontFamily: Constants.roboto,
                          color: Constants.white,
                          fontSize: _titleFontSize)),
                  Text(description,
                      style: TextStyle(
                          fontFamily: Constants.roboto,
                          color: Constants.white,
                          fontSize: 12))
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(_defaultPadding),
                  child: Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          if (Provider.of<Data>(context, listen: false)
                                  .protectBtc >=
                              price) {
                            Provider.of<Data>(context, listen: false)
                                    .protectBtc =
                                (Provider.of<Data>(context, listen: false)
                                        .protectBtc -
                                    price);
                            Provider.of<Data>(context, listen: false)
                                .changeParamDevice(object);
                          }
                        },
                        child: Text(price.toString() + "B",
                            style: TextStyle(
                                fontFamily: Constants.roboto,
                                color: Constants.superGreen,
                                fontSize: _titleFontSize)),
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
