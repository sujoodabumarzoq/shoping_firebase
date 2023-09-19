


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoping/Features/login/presentation/login__screen.dart';

class appbarhome extends StatelessWidget {
  const appbarhome({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, right: 13),
        child: Row(
          children: [
            Container(
              height:50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13)),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13)),
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
              child:  Icon(
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
                child:       IconButton(
                  onPressed: () async {
                    // GoogleSignIn googlesignin = GoogleSignIn();
                    // googlesignin.disconnect();
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(
                        context,  MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    )
                    );
                    // Navigator.of(context).pushReplacementNamed("login");
                  },
                  icon:  Icon(
                    Icons.exit_to_app,
                    color: Colors.indigo.shade400,
                  ),
                )

            ),

          ],
        ),
      ),
    );
  }
}
