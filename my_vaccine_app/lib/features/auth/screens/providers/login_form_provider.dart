import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:my_vaccine_app/features/auth/domain/entities/user_model.dart';
import 'package:my_vaccine_app/features/auth/screens/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/input/email.dart';
import 'package:my_vaccine_app/features/shared/infrastructure/input/password.dart';

final loginFormProvider =
    StateNotifierProvider.autoDispose<LoginFormNotifier, LoginFormState>((ref) {
 final loginUserCallback = ref.watch(authProvider.notifier).loginUser;


  return LoginFormNotifier(
    loginUserCallback:loginUserCallback
  );
});


class LoginFormState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final Email email;
  final Password password;
  final User? user;
  LoginFormState(
      {this.isPosting = false,
      this.isFormPosted = false,
      this.isValid = false,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.user});

  LoginFormState copyWith({
    bool? isPosting,
    bool? isFormPosted,
    bool? isValid,
    Email? email,
    Password? password,
    User? user,
  }) {
    return LoginFormState(
      isPosting: isPosting ?? this.isPosting,
      isFormPosted: isFormPosted ?? this.isFormPosted,
      isValid: isValid ?? this.isValid,
      email: email ?? this.email,
      password: password ?? this.password,
      user: user ?? this.user,
    );
  }

  @override
  String toString() {
    return 'LoginFormState(isPosting: $isPosting, isFormPosted: $isFormPosted, isValid: $isValid, email: $email, password: $password, user: $user)';
  }
}

class LoginFormNotifier extends StateNotifier<LoginFormState> {
   final Future<User?>  Function(String, String) loginUserCallback;

  LoginFormNotifier({
    required this.loginUserCallback,
  }): super( LoginFormState() );
  


  onEmailChanged(String value) {
    final newEmail = Email.dirty(value);
    state = state.copyWith(
        email: newEmail, isValid: Formz.validate([newEmail, state.password]));
  }

  onPasswordChanged(String value) {
    final newPassword = Password.dirty(value);
    state = state.copyWith(
        password: newPassword,
        isValid: Formz.validate([newPassword, state.email]));
  }

  onSubmitted() async {
      _touchEveryField();

    if ( !state.isValid ) return;

    state = state.copyWith(isPosting: true);

    var userResponse= await loginUserCallback( state.email.value, state.password.value );

    state = state.copyWith(isPosting: false, user: userResponse);
  }

  _touchEveryField() {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);

    state = state.copyWith(
        isFormPosted: true,
        email: email,
        password: password,
        isValid: Formz.validate([email, password]));
  }
}