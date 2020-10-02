import 'package:flut_new_proj/main.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'hardware.dart';

double _titleFontSize = 19;
SvgPicture _ad = SvgPicture.asset("assets/icons/ad.svg", width: wScreen);
SvgPicture _titleBar =
    SvgPicture.asset("assets/icons/store_title_bar.svg", width: wScreen);
SvgPicture _container =
    SvgPicture.asset("assets/icons/store_container.svg", width: wScreen);
double _defaultPadding = 8;
SvgPicture _ram = SvgPicture.asset("assets/icons/ram.svg");

Widget _ramGoods = _goodsBar(_ram, "RAM 8GB", "description, description, description ", "B 1000");

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
      child: ListView(
        children: [
          Column(
            children: [
              _titleBarStore("HARDWARE"),
              _ramGoods,
              _ramGoods,
              _ramGoods,
              _ramGoods,
              _ramGoods,
              _titleBarStore("SOFTWARE"),
              _ramGoods,
              _ramGoods,
              _ramGoods,
              _ramGoods,
            ],
          ),
        ],
      ),
    );
  }

}



Widget _goodsBar( SvgPicture goods, String title, String description, String price) {
  return Padding(
    padding:  EdgeInsets.all(2),
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
                      child: Text(price,
                          style: TextStyle(
                              fontFamily: Constants.roboto,
                              color: Constants.superGreen,
                              fontSize: _titleFontSize)),
                    ),
                  ),
                ),
              ],
            )),
  );

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