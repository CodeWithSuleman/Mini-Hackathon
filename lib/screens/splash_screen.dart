import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';
import 'package:minihackathon/screens/login_screen.dart';
import 'package:minihackathon/widgets/button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 35),
        child: Column(
          children: [
            Container(
              height: 411,
              width: 496,
              decoration: BoxDecoration(
                color: const Color(0xff0D986A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Image.asset("assets/1.png"),
                  Image.asset("assets/Vector.png"),
                  Positioned(
                      top: 80,
                      left: 30,
                      child: Image.asset(
                        "assets/2.png",
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.6,
                      )),
                  Positioned(
                      top: 320,
                      left: 50,
                      child: Text(
                        "Plantify",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(ConstanColor.white),
                            fontSize: 50),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.018,
            ),
            SizedBox(
              //height: MediaQuery.of(context).size.height * 0.07,
              child: Text(
                "GET READYBE HIGYENIC",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(ConstanColor.color1),
                    fontSize: 26),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                " ",
                style: TextStyle(),
              ),
            ),
            Container(
              child: Text(
                "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(ConstanColor.black),
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.018,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              child: GrButton(
                  callBack: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInScreen()),
                    );
                  },
                  bcolor: Color(ConstanColor.color1),
                  bName: ("MASUK")),
            )
          ],
        ),
      ),
    );
  }
}
