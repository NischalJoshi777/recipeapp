import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleSignInButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Palette.darkGray,
            blurRadius: 1.0,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/google.png",
                height: 60,
                width: 60,
              ),
              const SizedBox(width: 12.0),
              Text(
                'Continue With Google',
                style: context.appTheme.bodyRegular.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
