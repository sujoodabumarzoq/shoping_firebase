import 'package:flutter/material.dart';
import 'package:shoping/Features/login/presentation/login__screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BodySignUp extends StatefulWidget {
  const BodySignUp({
    super.key,
  });

  @override
  State<BodySignUp> createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,

      child: Column(
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
          TextFormField(
            validator: (val) {
              if (val == "") {
                return " email not empty";
              }
              return null;
            },
            controller: email,

            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              // تعيين الهوامش الداخلية بقيمة 15
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                // تخصيص حدود الحقل
                borderSide: BorderSide(color: Colors.black), // لون الحدود
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            validator: (val) {
              if (val == "") {
                return " email not empty";
              }
              return null;
            },
            controller: password,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            validator: (val) {
              if (val == "") {
                return " email not empty";
              }
              return null;
            },
            controller: confirmpassword,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            // onPressed: () {
            //
            //   Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const HomeScreen(),
            //     ),
            //   );
            // },
            onPressed: () async {
              if (formState.currentState!.validate()) {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  if (credential.user!.emailVerified) {
                    Navigator.of(context).pushReplacementNamed("Home");
                  } else {
                    FirebaseAuth.instance.currentUser!
                        .sendEmailVerification();
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Check email',
                      desc:
                      'Verify your e-mail by clicking on the link in the e-mail................',
                      // btnCancelOnPress: () {},
                      // btnOkOnPress: () {},
                    )
                      ..show();
                  }
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Password weak',
                      desc: 'The password provided is too weak..............',
                      // btnCancelOnPress: () {},
                      // btnOkOnPress: () {},
                    )
                      ..show();
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'EmailAlreadyinuse',
                      desc:
                      'The account already exists for that email...............',
                      // btnCancelOnPress: () {},
                      // btnOkOnPress: () {},
                    )
                      ..show();

                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              }
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // تعيين حواف مدورة
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
              const Text("I have an account!", style: TextStyle(
      fontSize: 17,),),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Login", style: TextStyle(
                    fontSize: 20,))),
            ],
          ),
        ],
      ),
    );
  }
}
