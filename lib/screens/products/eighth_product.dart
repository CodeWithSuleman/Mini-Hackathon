import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';

class EighthProduct extends StatefulWidget {
  const EighthProduct({super.key});

  @override
  State<EighthProduct> createState() => _SeventhProductState();
}

class _SeventhProductState extends State<EighthProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Color(ConstanColor.color9),
            child: Stack(
              children: [
                Image.asset('assets/5.png'),
                Image.asset('assets/vector2.png'),
                Image.asset('assets/vector3.png'),
                Positioned(
                    top: 30,
                    left: 10,
                    child: Image.asset('assets/text1.png',
                        width: MediaQuery.of(context).size.width * 0.4)),
                Positioned(
                    top: 20,
                    left: 200,
                    child: Image.asset('assets/4.png',
                        width: MediaQuery.of(context).size.width * 0.09)),
                Positioned(
                    top: 90,
                    left: 10,
                    child: Image.asset('assets/text13.png',
                        width: MediaQuery.of(context).size.width * 0.6)),
                Positioned(
                    top: 180,
                    left: 10,
                    child: Image.asset('assets/text14.png',
                        width: MediaQuery.of(context).size.width * 0.2)),
                Positioned(
                    top: 180,
                    left: 150,
                    child: Image.asset('assets/vector4.png',
                        width: MediaQuery.of(context).size.width * 0.1)),
                Positioned(
                    top: 150,
                    left: 200,
                    child: Image.asset('assets/9.png',
                        width: MediaQuery.of(context).size.width * 0.2)),
                Positioned(
                    top: 30,
                    left: 220,
                    child: Image.asset('assets/16.png',
                        width: MediaQuery.of(context).size.width * 0.4)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              children: [
                Text(
                  "Plant a Life",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Color(ConstanColor.color2)),
                ),
                Text(
                  "Live amongst Living",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      color: Color(ConstanColor.color2)),
                ),
                Text(
                  "Spread the joy",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      color: Color(ConstanColor.color2)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
