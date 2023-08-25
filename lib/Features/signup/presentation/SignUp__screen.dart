import 'package:flutter/material.dart';
import 'package:shoping/Features/signup/presentation/widgets/body_SignUpn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 100),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: const Padding(
            padding: EdgeInsets.only(top:20,right: 20,bottom: 100,left: 20),
            child: BodySignUp(),
          ),
        ),
      ),
    );
  }
}

