import 'package:my_vaccine_app/features/shared/widgets/formz_input_base.dart';

enum FirstNameValidationError { invalid }

class FirstName extends FormzInputBase<String, FirstNameValidationError> {
  const FirstName.pure() : super.pure('', 'First name cannot be empty');
  const FirstName.dirty([String value = '']) : super.dirty(value, 'First name cannot be empty');

  @override
  FirstNameValidationError get error => FirstNameValidationError.invalid;
}
