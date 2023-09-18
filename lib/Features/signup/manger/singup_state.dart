part of 'singup_cubit.dart';

@immutable
abstract class SingupState {}

class SingupInitial extends SingupState {}
class SingupsucState extends SingupState {}
class SingupfieldState extends SingupState {}

//MainCubit.get(context)