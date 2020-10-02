import 'package:flut_new_proj/main.dart';
import 'package:flut_new_proj/screens/hardware.dart';
import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget _titleBar = SvgPicture.asset(
  "assets/icons/p_network.svg",
  width: wScreen,
);

class Processes extends StatefulWidget {
  @override
  _ProcessesState createState() => _ProcessesState();

}

class _ProcessesState extends State<Processes> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Column(
          children: [
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("99.23.411.333", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("99.23.411.333", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("99.23.411.333", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL"),
            _panel("132.23.62.342", 23, "Download... ", "SPYWARE 17 LVL")
          ],
        ),
      ],
    );
  }

}

Widget _panel(String ip, int progress, String state, String type) {
  return Column(
    children: [
      Container(
        color: Constants.bars,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 3, 3, 10),
                  child: Text(
                    ip,
                    style: TextStyle(
                        color: Constants.white,
                        fontFamily: Constants.quantico),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 3, 3, 0),
                  child: Text(
                    "$progress%",
                    style: TextStyle(
                        color: Constants.superGreen,
                        fontFamily: Constants.quantico),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 3, 10),
                      child: Text(
                        state,
                        style: TextStyle(
                            color: Constants.white,
                            fontFamily: Constants.quantico),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 3, 0),
                      child: Text(
                        type,
                        style: TextStyle(
                            color: Constants.red,
                            fontFamily: Constants.quantico),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: widthScreen,
        height: 1,
        color: Constants.white,
      ),
    ],
  );
}
