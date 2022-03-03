import 'package:blue_squad_app/models/userdata.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final userdata userModel;

  LoginSuccessState(this.userModel);
}

class LoginErrorState extends LoginStates {
  final String error;

  LoginErrorState(this.error);
}