import 'package:flut_new_proj/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> messagesList = List();

class OSMessages extends StatefulWidget {
  @override
  _OSMessagesState createState() => _OSMessagesState();
}

class _OSMessagesState extends State<OSMessages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          _createNewMessage("qwe", "12313123123",
              "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqe qweqwe_showAllMessage_showAllMessage_showAllMessage_showAllMessage_showAllMessage_showAllMessage_showAllMessage_showAllMessage")
        ],
      ),
    );
  }
}

Container _showAllMessage() {
  return Container(
    child: Text("hi"),
  );
}

Widget _createNewMessage(String title, String ip, String text) {
  return Column(
    children: [
      Container(
        color: Constants.red,
        child: Column(
          children: [
            Row(children: [
              Text(
                title,
                style: TextStyle(
                    color: Constants.textColorOs,
                    fontFamily: Constants.quantico,
                    fontSize: 14),
              )
            ])
          ],
        ),
      ),
    ],
  );
}
