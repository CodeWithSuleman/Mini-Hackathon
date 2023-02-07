import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';

class SecondProduct extends StatefulWidget {
  const SecondProduct({super.key});

  @override
  State<SecondProduct> createState() => _SecondProductState();
}

class _SecondProductState extends State<SecondProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        color: Color(ConstanColor.color4),
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
                child: Image.asset('assets/text4.png',
                    width: MediaQuery.of(context).size.width * 0.6)),
            Positioned(
                top: 180,
                left: 10,
                child: Image.asset('assets/text3.png',
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
                child: Image.asset('assets/10.png',
                    width: MediaQuery.of(context).size.width * 0.4)),
          ],
        ),
      ),
    );
  }
}
