import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OSScan extends StatefulWidget {
  @override
  _OSScanState createState() => _OSScanState();

}

class _OSScanState extends State<OSScan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Center(child: Text("scan", style: TextStyle(fontFamily: Constants.quantico, color: Colors.white),))
      ],
    );
  }

}