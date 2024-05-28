import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/config/theme/colors_my_vaccine_app.dart';
import 'package:my_vaccine_app/features/shared/shared.dart';
import 'package:my_vaccine_app/features/shared/widgets/custom_datepicker_form_field.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/registration_form_provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final textStyles = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: GeometricalBackground(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (!context.canPop()) return;
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(flex: 1),
                    Text(
                      'Crear cuenta',
                      style: textStyles.titleLarge?.copyWith(color: Colors.white),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(100)),
                  ),
                  child: const _RegisterForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends ConsumerWidget {
  const _RegisterForm();

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registrationForm = ref.watch(registrationFormProvider);

    // ref.listen(registrationFormProvider, (previous, next) {
    //   if (next.isFormPosted && !next.isValid) {
    //     showSnackbar(context, 'Please fill out all fields correctly');
    //   }
    // });

    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text('Nueva cuenta', style: textStyles.titleMedium),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Nombres',
            keyboardType: TextInputType.name,
            onChanged: ref.read(registrationFormProvider.notifier).onFirstNameChanged,
            errorMessage: registrationForm.isFormPosted ? registrationForm.firstName.errorMessage : null,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Apellidos',
            keyboardType: TextInputType.name,
            onChanged: ref.read(registrationFormProvider.notifier).onLastNameChanged,
            errorMessage: registrationForm.isFormPosted ? registrationForm.lastName.errorMessage : null,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Correo',
            keyboardType: TextInputType.emailAddress,
            onChanged: ref.read(registrationFormProvider.notifier).onEmailChanged,
            errorMessage: registrationForm.isFormPosted ? registrationForm.email.errorMessage : null,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged: ref.read(registrationFormProvider.notifier).onPasswordChanged,
            onFieldSubmitted: (_) => ref.read(registrationFormProvider.notifier).onFormSubmit(),
            errorMessage: registrationForm.isFormPosted ? registrationForm.password.errorMessage : null,
          ),
          const SizedBox(height: 30),
          CustomTextFormField(
            label: 'Repita la contraseña',
            obscureText: true,
            onChanged: ref.read(registrationFormProvider.notifier).onConfirmPasswordChanged,
            onFieldSubmitted: (_) => ref.read(registrationFormProvider.notifier).onFormSubmit(),
            errorMessage: registrationForm.isFormPosted ? registrationForm.confirmPassword.errorMessage : null,
          ),
          const SizedBox(height: 30),
          CustomDatePickerFormField(
            label: 'Fecha de nacimiento',
            onDateChanged: (date) => ref.read(registrationFormProvider.notifier).onBirthdateChanged(date),
            errorMessage: registrationForm.isFormPosted ? registrationForm.birthdate.errorMessage : null,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomFilledButton(
              text: 'Crear',
              buttonColor: secondaryColor,
              onPressed:  () => ref.read(registrationFormProvider.notifier).onFormSubmit()
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Ya tienes cuenta?'),
              TextButton(
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.push('/login');
                  }
                },
                child: const Text('Ingresa aquí'),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
