import 'package:flutter/material.dart';

class advertisement_homescreen extends StatelessWidget {
  const advertisement_homescreen({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.14, left: width * 0.04),
      child: Container(
        height: height * 0.2,
        width: width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/mainbanner.png'))),
      ),
    );
  }
}
