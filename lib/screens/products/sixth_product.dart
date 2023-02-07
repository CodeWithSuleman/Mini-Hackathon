import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SixthProduct extends StatefulWidget {
  const SixthProduct({super.key});

  @override
  State<SixthProduct> createState() => _SixthProductState();
}

class _SixthProductState extends State<SixthProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                Image.asset('assets/15.jpg'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
                "Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office. "),
          ),
        ],
      ),
    );
  }
}
