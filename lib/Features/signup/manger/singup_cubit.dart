import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping/Features/home/presentation/HomeScreen.dart';

part 'singup_state.dart';

//SingupCubit.get(context)
class SingupCubit extends Cubit<SingupState> {
  SingupCubit() : super(SingupInitial());

  static SingupCubit get(context) => BlocProvider.of(context);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();

  Future<void> SingupState(BuildContext context) async {
    if (formState.currentState!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
        if (credential.user!.emailVerified) {
          Navigator.of(context).pushReplacementNamed("Home");
        } else {
          FirebaseAuth.instance.currentUser!.sendEmailVerification();
          AwesomeDialog(
            context: context,
            // قم بتمرير BuildContext هنا
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Check email',
            desc:
                'Verify your e-mail by clicking on the link in the e-mail................',
            // btnCancelOnPress: () {},
            // btnOkOnPress: () {},
          )..show();
        }
        emit(SingupsucState());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(
            context: context,
            // قم بتمرير BuildContext هنا
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Password weak',
            desc: 'The password provided is too weak..............',
            // btnCancelOnPress: () {},
            // btnOkOnPress: () {},
          )..show();
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(
            context: context,
            // قم بتمرير BuildContext هنا
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'EmailAlreadyinuse',
            desc: 'The account already exists for that email...............',
            // btnCancelOnPress: () {},
            // btnOkOnPress: () {},
          )..show();

          print('The account already exists for that email.');
        }
        emit(SingupfieldState());
      } catch (e) {
        print(e);
      }
    }
  }
}
