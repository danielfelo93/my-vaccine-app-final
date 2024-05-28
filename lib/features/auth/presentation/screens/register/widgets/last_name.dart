
import 'package:my_vaccine_app/features/shared/widgets/formz_input_base.dart';

enum LastNameValidationError { invalid }

class LastName extends FormzInputBase<String, LastNameValidationError> {
  const LastName.pure() : super.pure('', 'Last name cannot be empty');
  const LastName.dirty([String value = '']) : super.dirty(value, 'Last name cannot be empty');

  @override
  LastNameValidationError get error => LastNameValidationError.invalid;
}
