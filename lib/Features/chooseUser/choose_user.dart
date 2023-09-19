import 'package:flutter/material.dart';
import 'package:shoping/Features/chooseUser/presentation/bodychooseuser.dart';

class chooseuser extends StatefulWidget {
  const chooseuser({super.key});

  @override
  State<chooseuser> createState() => _chooseuserState();
}

class _chooseuserState extends State<chooseuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
        const EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 100),
        child: ListView(
          children: [Container(
            decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: const Padding(
              padding: EdgeInsets.only(top: 20,right: 20,bottom: 100,left: 20),
              child: Bodychooseuser(),
            ),
          )],
        ),
      ),
    );
  }
}
