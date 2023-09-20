import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoping/Features/chooseUser/choose_user.dart';
import 'package:shoping/Features/login/presentation/login__screen.dart';

class appbarseller extends StatelessWidget {
  const appbarseller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, right: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context) {
                          return chooseuser();
                        },
                        )

                    );// Navigator.of(context).pushReplacementNamed("login");
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.indigo.shade400,
                  ),
                )),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () async {
                    // GoogleSignIn googlesignin = GoogleSignIn();
                    // googlesignin.disconnect();
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                    // Navigator.of(context).pushReplacementNamed("login");
                  },
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.indigo.shade400,
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
