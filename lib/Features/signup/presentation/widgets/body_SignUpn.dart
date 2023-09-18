import 'package:flutter/material.dart';
import 'package:shoping/Features/login/presentation/login__screen.dart';

import 'package:shoping/Features/signup/manger/singup_cubit.dart';

class BodySignUp extends StatefulWidget {
  const BodySignUp({
    super.key,
  });

  @override
  State<BodySignUp> createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: SingupCubit.get(context).formState,
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
            controller: SingupCubit.get(context).email,
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
            controller: SingupCubit.get(context).password,
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
            controller: SingupCubit.get(context).confirmpassword,
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

            onPressed: () async {
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
              const Text(
                "I have an account!",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Login",
                      style: TextStyle(
                        fontSize: 20,
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
