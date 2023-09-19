import 'package:flutter/material.dart';
import 'package:shoping/Features/home/presentation/widgets/advertisement_homescreen.dart';
import 'package:shoping/Features/home/presentation/widgets/appbarhome.dart';
import 'package:shoping/Features/home/presentation/widgets/list_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            height: height*0.25,
            width: width,
            color: const Color(0xff283148),
          ),
          appbarhome(width: width),
          advertisement_homescreen(height: height, width: width),
          list_body(height: height, width: width)
        ],
      ),
    );
  }
}



