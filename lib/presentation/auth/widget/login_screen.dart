import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/animations/fade_transition_wrapper.dart';
import 'package:myrecipeapp/presentation/auth/auth_cubit/auth_cubit.dart';
import 'package:myrecipeapp/presentation/auth/widget/google_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: _SecondCurveViewPainter(),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: CustomPaint(
              painter: _FirstCurveViewPainter(),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeTransitionWrapper(
                    child: Text(
                      'Delicious Recipes, Made Simple!',
                      textAlign: TextAlign.center,
                      style: context.appTheme.h2.semiBold
                          .withColor(Colors.black87),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => GoogleSignInButton(
                          onPressed: () {
                            context.read<AuthCubit>().signInWithGoogle();
                          },
                        ),
                        authenticating: () => const CircularProgressIndicator(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FirstCurveViewPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Palette.primaryGreen
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(size.width * 0.50, size.height * .10,
        size.width * .40, size.height * .40);
    path.quadraticBezierTo(
        size.width * .30, size.height * .80, size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _SecondCurveViewPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Palette.primaryGreen
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Start from top-right corner
    path.moveTo(size.width * .60, 0);
    path.quadraticBezierTo(size.width * 0.60, size.height * .20,
        size.width * .80, size.height * .30);
    // Second curve
    path.quadraticBezierTo(
        size.width * 1.2, size.height * 0.50, size.width, size.height * 0.40);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
