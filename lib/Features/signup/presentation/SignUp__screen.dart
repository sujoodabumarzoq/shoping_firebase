import 'package:flutter/material.dart';
import 'package:shoping/Features/login/presentation/widgets/body_login.dart';

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
            padding: EdgeInsets.only(top: 50,right: 20,bottom: 50,left: 20),
            child: BodyLogin(),
          ),
        ),
      ),
    );
  }
}

