import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';
import 'package:minihackathon/screens/products/eighth_product.dart';
import 'package:minihackathon/screens/products/fifth_product.dart';

import 'package:minihackathon/screens/products/first_producdss.dart';
import 'package:minihackathon/screens/products/forth_product.dart';

import 'package:minihackathon/screens/products/second_product.dart';
import 'package:minihackathon/screens/products/seventh_product.dart';
import 'package:minihackathon/screens/products/sixth_product.dart';
import 'package:minihackathon/screens/products/third_product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.012),
            Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                    child: Image.asset('assets/3.png')),
                SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                Text("PLANTIFY",
                    style: TextStyle(
                        fontSize: 20, color: Color(ConstanColor.color1))),
                SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                const Icon(Icons.notification_add),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.012),
            GestureDetector(onTap: () {}, child: Image.asset('assets/7.png')),
            SizedBox(height: MediaQuery.of(context).size.height * 0.012),
            Column(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Top Pick",
                          style: TextStyle(color: Color(ConstanColor.black)),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Indoor",
                            style:
                                TextStyle(color: Color(ConstanColor.black)))),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("OutDoor",
                            style:
                                TextStyle(color: Color(ConstanColor.black)))),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Seeds",
                            style:
                                TextStyle(color: Color(ConstanColor.black)))),
                  ],
                ),
                const FirstProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const SecondProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const ThirdProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const ForthProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const FifithProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const SixthProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const SeventhProduct(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.019),
                const EighthProduct(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
