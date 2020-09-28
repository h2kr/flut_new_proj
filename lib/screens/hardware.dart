import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

double screenWidth = width * 5;
double widthPanelDevice = screenWidth / 1.953125;

Widget hardwareScreen() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
    child: Column(
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/device_name.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 3, 0, 3),
              child: Text(
                "POHUY 7Z",
                style: TextStyle(
                    fontSize: 15, color: Colors.white, fontFamily: "Quantico"),
              ),
            )
          ],
        ),
        Row(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  "assets/icons/device_icon.svg",
                  width: screenWidth - widthPanelDevice,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(83, 20, 0, 0),
                  child:
                      Center(child: SvgPicture.asset("assets/icons/dvice.svg")),
                )
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/ram_string.svg",
                      width: widthPanelDevice,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        "RAM: 8GB",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Quantico"),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/cpu_string.svg",
                      width: widthPanelDevice,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 12, 0, 0),
                      child: Text(
                        "CPU: INTERDOOR I9",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Quantico"),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/memory_string.svg",
                      width: widthPanelDevice,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 12, 0, 0),
                      child: Text(
                        "MEMORY: 128GB",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Quantico"),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/network_string.svg",
                      width: widthPanelDevice,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 12, 0, 0),
                      child: Text(
                        "NETWORK: 10Mbit/S",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Quantico"),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/system_string.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 5, 0, 0),
              child: Text(
                "SYSTEM",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Quantico", fontSize: 12),
              ),
            )
          ],
        ),
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/system_panel.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                width: screenWidth,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "RAM: 6.1 / 7.9 GB",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              ),
                              Text(
                                "CPU: 78%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              ),
                              Text(
                                "MEMORY: 58 / 112 GB",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              ),
                              Text(
                                "NETWORK: 52 KBit/s",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "STABLE",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              ),
                              Text(
                                "STABLE",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              ),
                              Text(
                                "STABLE",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              ),
                              Text(
                                "WARNING",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontFamily: "Quantico",
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/other_string.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
              child: Text(
                "HARDWARE",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Quantico", fontSize: 8.5),
              ),
            )
          ],
        ),
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/other_panel.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/cpu.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/ram.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/memory.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/router.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset("assets/icons/plus.svg"),
                  )
                ],
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/other_string.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
              child: Text(
                "SOFT",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Quantico", fontSize: 8.5),
              ),
            )
          ],
        ),
        Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/other_panel.svg",
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/antivir.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/fw.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/passcrack.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/spyware.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/ddos.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset("assets/icons/plus.svg"),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
