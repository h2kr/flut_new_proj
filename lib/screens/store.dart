import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'hardware.dart';

double _titleFontSize = 19;
SvgPicture _ad = SvgPicture.asset("assets/icons/ad.svg", width: screenWidth);
SvgPicture _titleBar =
    SvgPicture.asset("assets/icons/store_title_bar.svg", width: screenWidth);
SvgPicture _container =
    SvgPicture.asset("assets/icons/store_container.svg", width: screenWidth);
double _defaultPadding = 8;
SvgPicture _ram = SvgPicture.asset("assets/icons/ram.svg");

Widget _ramGoods = _goodsBar(_ram, "RAM 8GB", "description, description, description ", "B 1000");

List<Widget> _hardwareList = [];

Widget storeScreen() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
    child: Column(
      children: [
        _ad,
        _titleBarStore("HARDWARE"),
        _ramGoods,
        _ramGoods,
        _titleBarStore("SOFT"),
        _ramGoods,
        _ramGoods,
      ],
    ),
  );
}



Widget _goodsBar( SvgPicture goods, String title, String description, String price) {
  return Container(
      child: Stack(
        children: [
          _container,
          Row(
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
                    child: Text(price,
                        style: TextStyle(
                            fontFamily: Constants.roboto,
                            color: Constants.superGreen,
                            fontSize: _titleFontSize)),
                  ),
                ),
              ),
            ],
          )
        ],
      ));

}

Widget _titleBarStore(String title) {
  return Container(
      child: Stack(
        children: [
          _titleBar,
          Container(
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