import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';

class GrButton extends StatelessWidget {
  final String bName;
  final Icon? icon;
  final Color bcolor;
  final VoidCallback callBack;

  const GrButton(
      {super.key,
      required this.callBack,
      this.icon,
      required this.bcolor,
      required this.bName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(ConstanColor.color1),
          surfaceTintColor: Color(ConstanColor.color1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.3),
            Text(
              bName,
            ),
          ],
        ));
  }
}
