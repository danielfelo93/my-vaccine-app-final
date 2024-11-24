import 'package:formz/formz.dart';

// Define input validation errors
enum ConfirmPasswordError { empty, mismatch, length }


// Extend FormzInput and provide the input type and error type.
class ConfirmPassword extends FormzInput<String, ConfirmPasswordError> {
  final String password;

  // Call super.pure to represent an unmodified form input.
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');

  // Call super.dirty to represent a modified form input.
  const ConfirmPassword.dirty( String value, {this.password = ''} ) : super.dirty(value);


  String? get errorMessage {
    if ( isValid || isPure ) return null;

    if ( displayError == ConfirmPasswordError.empty ) return 'El campo es requerido';
    if ( displayError == ConfirmPasswordError.mismatch ) return 'Las contraseñas no coinciden';

    return null;
  }


  // Override validator to handle validating a given input value.
  @override
  ConfirmPasswordError? validator(String value) {

    if ( value.isEmpty || value.trim().isEmpty ) return ConfirmPasswordError.empty;
    if ( value != password) return ConfirmPasswordError.mismatch;

    return null;
  }
}