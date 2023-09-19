import 'package:flutter/material.dart';
import 'package:shoping/Features/home/presentation/HomeScreen.dart';

class Bodychooseuser extends StatefulWidget {
  const Bodychooseuser({Key? key}) : super(key: key);

  @override
  BodychooseuserState createState() => BodychooseuserState();
}

class BodychooseuserState extends State<Bodychooseuser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("choose...",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),

        GestureDetector(
          onTap: () {},
          child: Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))

            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("seller ............",
                        style: TextStyle(
                            color: Colors.indigo.shade400,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.indigo.shade400,
                    ),
                  ]),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );

          },
          child: Container(
            height: 70,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))

            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Buyer ............",
                        style: TextStyle(
                            color: Colors.indigo.shade400,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.indigo.shade400,
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
