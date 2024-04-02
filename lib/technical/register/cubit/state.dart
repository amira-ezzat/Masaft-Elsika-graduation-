abstract class  RegisterState{}

class  RegisterInitiat extends  RegisterState{}

class RegisterError extends  RegisterState{
  late final String error;
  RegisterError(this.error);
}
class ChangePassVisibility extends  RegisterState{}
class ChangecPassVisibility extends RegisterState{}