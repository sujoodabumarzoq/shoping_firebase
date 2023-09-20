import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoping/Features/login/presentation/login__screen.dart';
import '../../../chooseUser/choose_user.dart';

class AppbarHome extends StatelessWidget {
  final double width;

  const AppbarHome({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, right: 13),
        child: Row(
          children: [
            InkWell(
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const chooseuser(),
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.indigo.shade400,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Container(
              height: 50,
              width: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  hintText: '',
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.indigo.shade400,
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.indigo.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
