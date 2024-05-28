import 'package:formz/formz.dart';

abstract class FormzInputBase<T, E> extends FormzInput<T, E> {
  final String emptyErrorMessage;

  const FormzInputBase.pure(T value, this.emptyErrorMessage) : super.pure(value);
  const FormzInputBase.dirty(T value, this.emptyErrorMessage) : super.dirty(value);

  @override
  E? validator(T value) {
    return value != null && value.toString().isNotEmpty ? null : error;
  }

  E get error;

  String? get errorMessage {
    if (isValid || isPure) return null;
    return emptyErrorMessage;
  }
}
