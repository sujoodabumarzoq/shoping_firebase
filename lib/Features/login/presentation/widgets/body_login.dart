import 'package:flutter/material.dart';
import 'package:shoping/Features/login/manger/login_cubit.dart';
import 'package:shoping/Features/signup/presentation/SignUp__screen.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({
    super.key,
  });

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginCubit.get(context).formState,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
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
            controller: LoginCubit.get(context).email,
            validator: (val) {
              if (val == "") {
                return " email not empty";
              }
              return null;
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Email',
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
            controller: LoginCubit.get(context).password,
            validator: (val) {
              if (val == "") {
                return " password not empty";
              }
              return null;
            },
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
          Positioned(
              // right: 50,
              left: 50,
              child: TextButton(
                  onPressed: () {}, child: const Text("Forget password?"))),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              LoginCubit.get(context).LoginsucState(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
              minimumSize: const Size(double.infinity, 0),
            ),
            child: const Text(
              ' Login ',
              style: TextStyle(
                color: Color(0xff283148),
                fontSize: 17,
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("I don't have an account!"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text("SignUp",
                        style: TextStyle(
                          fontSize: 20,
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
