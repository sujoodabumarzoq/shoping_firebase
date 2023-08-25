import 'package:flutter/material.dart';
import 'package:shoping/Features/home/presentation/HomeScreen.dart';
import 'package:shoping/Features/login/presentation/login__screen.dart';
class BodySignUp extends StatelessWidget {
  const BodySignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Row(
            children: [
              Text("        Shoping",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white)),
              Text("🛒",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            // تعيين الهوامش الداخلية بقيمة 15
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              // تخصيص حدود الحقل
              borderSide: BorderSide(color: Colors.black), // لون الحدود
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            hintText: 'Confirm password',
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(15.0), // تعيين حواف مدورة
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
            minimumSize: const Size(double.infinity, 0),
          ),
          child: const Text(
            ' SignUp ',
            style: TextStyle(
              color: Color(0xff283148),
              fontSize: 15,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("I have an account!"),
            TextButton(onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );


            },
                child: const Text("login")),
          ],
        ),
      ],
    );
  }
}
