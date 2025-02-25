import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/home/details/cubit/detail_cubit.dart';

class FavoriteButton extends StatelessWidget {
  final String id;

  const FavoriteButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailCubit>();
    return BlocBuilder<DetailCubit, DetailState>(builder: (__, _) {
      return IconButton(
        onPressed: () async {
          await cubit.addToFavorites(id.toString()).then(
            (_) {
              if (context.mounted) {
                if (cubit.state.isAddedToFavorites) {
                  _showSnackBar(context, 'Added to your favorites!');
                } else {
                  _showSnackBar(context, 'Removed from your favorites');
                }
              }
            },
          );
        },
        icon: CircleAvatar(
          backgroundColor: Palette.lightGray,
          child: Icon(
            cubit.state.isAddedToFavorites
                ? Icons.favorite
                : Icons.favorite_border,
            color:
                cubit.state.isAddedToFavorites ? Colors.red : Palette.darkGray,
            size: 30.0,
          ),
        ),
        color: Colors.red,
      );
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    final height = MediaQuery.of(context).size.height;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        dismissDirection: DismissDirection.up,
        backgroundColor: Palette.primaryGreen,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: height - height * .20,
          left: 20.0,
          right: 20.0,
        ),
        content: Text(
          message,
          style: context.appTheme.bodySmall.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
