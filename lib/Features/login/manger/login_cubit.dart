import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoping/Features/home/presentation/HomeScreen.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();

  Future<void> LoginsucState( BuildContext context) async {
    if (formState.currentState!.validate()) {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
            email: email.text, password: password.text);

        if (credential.user!.emailVerified) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        } else {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Check email',
            desc:
            'Verify your e-mail by clicking on the link in the e-mail................',
            // btnCancelOnPress: () {},
            // btnOkOnPress: () {},
          )..show();
        }
        emit(Loginsuc());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Email not found',
            desc: 'No user found for that email...............',
            // btnCancelOnPress: () {},
            // btnOkOnPress: () {},
          )..show();

          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Wrong password',
            desc: 'Wrong password provided for that user................',
            // btnCancelOnPress: () {},
            // btnOkOnPress: () {},
          )..show();
          emit(LoginfieldState());
          print('Wrong password provided for that user.');
        }
      }
    }
  }


}
