import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/register_user_request/register_user_request.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/auth/presentation/screens/register/widgets/birthdate.dart';
import 'package:my_vaccine_app/features/auth/presentation/screens/register/widgets/first_name.dart';
import 'package:my_vaccine_app/features/auth/presentation/screens/register/widgets/last_name.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/inputs/email.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/inputs/password.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/inputs/confirmPassword.dart';

final registrationFormProvider = StateNotifierProvider.autoDispose<
    RegistrationFormNotifier, RegistrationFormState>((ref) {
  final registerUserCallback = ref.watch(authProvider.notifier).registerUser;

  return RegistrationFormNotifier(registerUserCallback);
});

class RegistrationFormNotifier extends StateNotifier<RegistrationFormState> {
  final Function(RegisterUserRequest) registerUserCallback;
  RegistrationFormNotifier(this.registerUserCallback)
      : super(RegistrationFormState());

  void onFirstNameChanged(String value) {
    final firstName = FirstName.dirty(value);
    state = state.copyWith(
      firstName: firstName,
      isValid: Formz.validate([
        firstName,
        state.lastName,
        state.email,
        state.password,
        state.confirmPassword,
        state.birthdate
      ]),
    );
  }

  void onLastNameChanged(String value) {
    final lastName = LastName.dirty(value);
    state = state.copyWith(
      lastName: lastName,
      isValid: Formz.validate([
        state.firstName,
        lastName,
        state.email,
        state.password,
        state.confirmPassword,
        state.birthdate
      ]),
    );
  }

  void onEmailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      isValid: Formz.validate([
        state.firstName,
        state.lastName,
        email,
        state.password,
        state.confirmPassword,
        state.birthdate
      ]),
    );
  }

  void onPasswordChanged(String value) {
    final password = Password.dirty(value);
    final confirmPassword = ConfirmPassword.dirty(state.confirmPassword.value, password: value);
    //final confirmPassword = Password.dirty(state.confirmPassword.value);
    state = state.copyWith(
      confirmPassword: confirmPassword,
      password: password,
      isValid: Formz.validate([
        state.firstName,
        state.lastName,
        state.email,
        password,
        confirmPassword,
        state.birthdate
      ]),
    );
  }

  void onConfirmPasswordChanged(String value) {
    final confirmPassword = ConfirmPassword.dirty(value, password: state.password.value);
    //final confirmPassword = ConfirmPassword.dirty(value);
    final password = Password.dirty(state.password.value);
    state = state.copyWith(
      confirmPassword: confirmPassword,
      password: password,
      isValid: Formz.validate([
        state.firstName,
        state.lastName,
        state.email,
        password,
        confirmPassword,
        state.birthdate
      ]),
    );
  }

  void onBirthdateChanged(DateTime value) {
    final birthdate = Birthdate.dirty(DateFormat('yyyy-MM-dd').format(value));
    state = state.copyWith(
      birthdate: birthdate,
      isValid: Formz.validate([
        state.firstName,
        state.lastName,
        state.email,
        state.password,
        state.confirmPassword,
        birthdate
      ]),
    );
  }

  void onFormSubmit() async {
    _touchEveryField();
    if (!state.isValid) return;

    //state = state.copyWith(isPosting: true);

    final registerUserRequest = RegisterUserRequest(
      username: state.email.value,
      password: state.password.value,
      firstName: state.firstName.value,
      lastName: state.lastName.value,
      birthdate: DateTime.parse(state.birthdate.value),
    );

    await registerUserCallback(registerUserRequest);
  }

  void _touchEveryField() {
    final firstName = FirstName.dirty(state.firstName.value);
    final lastName = LastName.dirty(state.lastName.value);
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    //final confirmPassword = ConfirmPassword.dirty(state.confirmPassword.value);
    final birthdate = Birthdate.dirty(state.birthdate.value);

    state = state.copyWith(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      //confirmPassword: confirmPassword,
      birthdate: birthdate,
      isValid: Formz.validate(
          [firstName, lastName, email, password, birthdate]),
      isFormPosted: true,
    );
  }
}

class RegistrationFormState {
  final FirstName firstName;
  final LastName lastName;
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final Birthdate birthdate;
  final bool isValid;
  final bool isPosting;
  final bool isFormPosted;

  RegistrationFormState({
    this.firstName = const FirstName.pure(),
    this.lastName = const LastName.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    this.birthdate = const Birthdate.pure(),
    this.isValid = false,
    this.isPosting = false,
    this.isFormPosted = false,
  });

  RegistrationFormState copyWith({
    FirstName? firstName,
    LastName? lastName,
    Email? email,
    Password? password,
    ConfirmPassword? confirmPassword,
    Birthdate? birthdate,
    bool? isValid,
    bool? isPosting,
    bool? isFormPosted,
  }) {
    return RegistrationFormState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      birthdate: birthdate ?? this.birthdate,
      isValid: isValid ?? this.isValid,
      isPosting: isPosting ?? this.isPosting,
      isFormPosted: isFormPosted ?? this.isFormPosted,
    );
  }
}
