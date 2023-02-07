import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:minihackathon/constant/constant_color.dart';

class ThirdProduct extends StatefulWidget {
  const ThirdProduct({super.key});

  @override
  State<ThirdProduct> createState() => _ThirdProductState();
}

class _ThirdProductState extends State<ThirdProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Color(ConstanColor.color5),
        height: MediaQuery.of(context).size.height * 0.3,
        child: Stack(children: [
          Positioned(
              top: 15,
              left: 10,
              child: Image.asset('assets/text5.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.7)),
          Positioned(
              top: 100,
              left: 10,
              child: Image.asset('assets/text6.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.5)),
          Positioned(
              top: 100,
              left: 200,
              child: Image.asset('assets/11.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.2)),
          Positioned(
              top: 133,
              left: 212,
              child: Text(
                "INVITE",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(ConstanColor.white)),
              )),
          Positioned(
            top: 150,
            left: 250,
            child: Image.asset('assets/3.png'),
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Positioned(
            top: 100,
            left: 310,
            child: Image.asset('assets/12.png'),
            width: MediaQuery.of(context).size.width * 0.018,
          ),
          Positioned(
            top: 120,
            left: 300,
            child: Image.asset('assets/12.png'),
            width: MediaQuery.of(context).size.width * 0.018,
          ),
          Positioned(
            top: 140,
            left: 310,
            child: Image.asset('assets/12.png'),
            width: MediaQuery.of(context).size.width * 0.018,
          ),
          Positioned(
            top: 140,
            left: 290,
            child: Image.asset('assets/12.png'),
            width: MediaQuery.of(context).size.width * 0.018,
          ),
          Positioned(
            top: 110,
            left: 290,
            child: Image.asset('assets/12.png'),
            width: MediaQuery.of(context).size.width * 0.018,
          ),
          Positioned(
            top: 130,
            left: 280,
            child: Image.asset('assets/12.png'),
            width: MediaQuery.of(context).size.width * 0.018,
          ),
        ]),
      ),
    );
  }
}
