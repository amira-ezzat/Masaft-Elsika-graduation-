abstract class  LoginState{}

class  LoaginInitiat extends  LoginState{}

class LoaginError extends  LoginState{
  late final String error;
  LoaginError(this.error);
}
class ChangePasswordVisibility extends  LoginState{}