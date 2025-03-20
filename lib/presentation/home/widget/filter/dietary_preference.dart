import 'package:flutter/material.dart';

import 'custom_choice_chip.dart';

class DietaryPreference extends StatelessWidget {
  const DietaryPreference({super.key});

  @override
  Widget build(BuildContext context) {
    // List of dietary preferences
    final List<DietaryPreferenceModel> preferences = [
      DietaryPreferenceModel(title: 'Gluten Free', isSelected: true),
      DietaryPreferenceModel(title: 'Ketogenic', isSelected: false),
      DietaryPreferenceModel(title: 'Vegetarian', isSelected: true),
      DietaryPreferenceModel(title: 'Vegan', isSelected: false),
      DietaryPreferenceModel(title: 'Lacto-Vegetarian', isSelected: false),
      DietaryPreferenceModel(title: 'Pescetarian', isSelected: false),
      DietaryPreferenceModel(title: 'Paleo', isSelected: false),
      DietaryPreferenceModel(title: 'Primal', isSelected: false),
      DietaryPreferenceModel(title: 'Whole30', isSelected: false)
    ];

    return Wrap(
      spacing: 4.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.start, // Align chips to start
      crossAxisAlignment:
          WrapCrossAlignment.start, // Align chips to the start vertically
      children: preferences.map((preference) {
        return CustomChoiceChip(
          title: preference.title,
          isSelected: preference.isSelected,
          onSelected: (value) {
            // Handle selection change if needed
          },
        );
      }).toList(),
    );
  }
}

class DietaryPreferenceModel {
  final String title;
  bool isSelected;

  DietaryPreferenceModel({required this.title, this.isSelected = false});
}
