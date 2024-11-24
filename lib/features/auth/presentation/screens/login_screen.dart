import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_vaccine_app/config/theme/colors_my_vaccine_app.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:my_vaccine_app/features/auth/presentation/providers/providers.dart';
import 'package:my_vaccine_app/features/shared/shared.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: GeometricalBackground( 
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox( height: 40 ),
                // Icon Banner
               Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      100),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/My_Vaccine_App_Logo_Daniel.png'),
                    fit: BoxFit
                        .cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ],
                ),
              ),
              
                const SizedBox( height: 30 ),
    
                Container(
                  height: size.height - 250, // 80 los dos sizebox y 100 el ícono
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(100)),
                  ),
                  child: const _LoginForm(),
                )
              ],
            ),
          )
        )
      ),
    );
  }
}

class _LoginForm extends ConsumerWidget {

  const _LoginForm();

  void showSnackbar( BuildContext context, String message ) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final loginForm = ref.watch(loginFormProvider);

    
    ref.listen(authProvider, (previous, next) {
      if(next.authStatus == AuthStatus.authenticated) {
        context.pushReplacement('/home');
      }
      if ( next.errorMessage.isEmpty ) return;
      showSnackbar( context, next.errorMessage );
    });


    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox( height: 20 ),
          Text('Login', style: textStyles.titleLarge ),
          const SizedBox( height: 25 ),

          CustomTextFormField(
            label: 'Correo',
            keyboardType: TextInputType.emailAddress,
            onChanged: ref.read(loginFormProvider.notifier).onEmailChange,
            errorMessage: loginForm.isFormPosted ?
               loginForm.email.errorMessage 
               : null,
          ),
          const SizedBox( height: 15 ),

          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged: ref.read(loginFormProvider.notifier).onPasswordChanged,
            onFieldSubmitted: ( _ ) => ref.read(loginFormProvider.notifier).onFormSubmit(),
            errorMessage: loginForm.isFormPosted ?
               loginForm.password.errorMessage 
               : null,
          ),
    
          const SizedBox( height: 24 ),

          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomFilledButton(
              text: 'Ingresar',
              buttonColor: secondaryColor,
              onPressed: loginForm.isPosting
                ? null 
                : ref.read(loginFormProvider.notifier).onFormSubmit
            )
          ),

          //const Spacer( flex: 1 ),
          //const SizedBox( height: 10 ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿No tienes cuenta?'),
              TextButton(
                onPressed: ()=> context.push('/register'), 
                child: const Text('Crea una aquí')
              )
            ],
          ),

          const Spacer( flex: 1),
          //const SizedBox( height: 8 ),
        ],
      ),
    );
  }
}