import 'package:flutter/material.dart';
import 'package:shoping/Features/seller/presentation/widgets/appbarseller.dart';
import 'package:shoping/Features/seller/presentation/widgets/bodyseller.dart';

class sellerscreen extends StatelessWidget {
  const sellerscreen({super.key});



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body:Stack(
          children: [
          Container(
          height: height*0.13,
          width: width,
          color: Colors.indigo.shade100,
        ),
            appbarseller(),
            bodyseller()
          ],
        ),
    );
  }

}



