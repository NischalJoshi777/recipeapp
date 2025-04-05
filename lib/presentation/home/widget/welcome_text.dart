import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/profile/cubit/profile_cubit.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          return state.profileLoadStatus.maybeWhen(
            orElse: () => const Text('Hello!'),
            loaded: () => Text("Hello, ${state.profileModel.firstName}!"),
          );
        }),
        const SizedBox(height: 4.0),
        Text(
          'What would you like to cook today ?',
          style: context.appTheme.bodyLarge.semiBold.copyWith(
            color: Colors.black87,
            height: 1.25,
          ),
        ),
      ],
    );
  }
}
