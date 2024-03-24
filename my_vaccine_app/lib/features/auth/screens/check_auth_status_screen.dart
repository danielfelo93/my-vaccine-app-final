import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class CheckAuthStatusScreen extends StatelessWidget {
//   const CheckAuthStatusScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // context.go('/login');
//     // ref.listen(authProvider,(previous,next){
//     //   print(next);
//     //   context.go('/');
//     // });
//     WidgetsBinding.instance?.addPostFrameCallback((_) {
//       context.go('/login');
//     });

//     return const Scaffold(
//       body: Center(
//         // child: CircularProgressIndicator(strokeWidth: 2),
//       ),
//     );
//   }
// }

// class CheckAuthStatusScreen extends StatelessWidget {
//   const CheckAuthStatusScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance?.addPostFrameCallback((_) {
//       final authBloc = context.read<AuthBloc>();
//       final authState = authBloc.state;
//       if (authState.user ==null) {
//         context.go('/login');
//       } else {
//         context.go('/home');
//       }
//     });
//     // context.go('/login');

//     return const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(strokeWidth: 2),
//       ),
//     );
//   }
// }


class CheckAuthStatusScreen extends StatelessWidget {
  const CheckAuthStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // context.go('/login');
    // ref.listen(authProvider,(previous,next){
    //   print(next);
    //   context.go('/');
    // });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.go('/login');
    });

    return const Scaffold(
      body: Center(
        // child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}
