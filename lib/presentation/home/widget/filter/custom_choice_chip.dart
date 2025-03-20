import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';

class CustomChoiceChip extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  const CustomChoiceChip({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(!isSelected),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Palette.primaryGreen : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: isSelected ? Colors.green : Palette.darkGray.withAlpha(50),
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isSelected)
              const Icon(
                Icons.check,
                size: 12.0,
                color: Colors.white, // Tick color
              ),
            const SizedBox(width: 5.0),
            Text(
              title,
              style: context.appTheme.bodySmall.copyWith(
                color: isSelected ? Colors.white : Palette.darkGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
