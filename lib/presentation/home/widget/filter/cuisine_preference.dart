import 'package:flutter/material.dart';

import 'custom_choice_chip.dart';

class CuisinePreference extends StatelessWidget {
  const CuisinePreference({super.key});

  @override
  Widget build(BuildContext context) {
    // List of cuisines with initial selection state
    final List<CuisinePreferenceModel> cuisines = [
      CuisinePreferenceModel(title: 'African', isSelected: false),
      CuisinePreferenceModel(title: 'Asian', isSelected: false),
      CuisinePreferenceModel(title: 'American', isSelected: false),
      CuisinePreferenceModel(title: 'British', isSelected: false),
      CuisinePreferenceModel(title: 'Cajun', isSelected: false),
      CuisinePreferenceModel(title: 'Caribbean', isSelected: false),
      CuisinePreferenceModel(title: 'Chinese', isSelected: false),
      CuisinePreferenceModel(title: 'Eastern European', isSelected: false),
      CuisinePreferenceModel(title: 'European', isSelected: false),
      CuisinePreferenceModel(title: 'French', isSelected: false),
      CuisinePreferenceModel(title: 'German', isSelected: false),
      CuisinePreferenceModel(title: 'Greek', isSelected: false),
      CuisinePreferenceModel(title: 'Indian', isSelected: false),
      CuisinePreferenceModel(title: 'Irish', isSelected: false),
      CuisinePreferenceModel(title: 'Italian', isSelected: false),
      CuisinePreferenceModel(title: 'Japanese', isSelected: false),
      CuisinePreferenceModel(title: 'Jewish', isSelected: false),
      CuisinePreferenceModel(title: 'Korean', isSelected: false),
      CuisinePreferenceModel(title: 'Latin American', isSelected: false),
      CuisinePreferenceModel(title: 'Mediterranean', isSelected: false),
      CuisinePreferenceModel(title: 'Mexican', isSelected: false),
      CuisinePreferenceModel(title: 'Middle Eastern', isSelected: false),
      CuisinePreferenceModel(title: 'Nordic', isSelected: false),
      CuisinePreferenceModel(title: 'Southern', isSelected: false),
      CuisinePreferenceModel(title: 'Spanish', isSelected: false),
      CuisinePreferenceModel(title: 'Thai', isSelected: false),
      CuisinePreferenceModel(title: 'Vietnamese', isSelected: false),
    ];

    return Wrap(
      spacing: 4.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.start, // Align chips to start
      crossAxisAlignment:
          WrapCrossAlignment.start, // Align chips to the start vertically
      children: cuisines.map((cuisine) {
        return CustomChoiceChip(
          title: cuisine.title,
          isSelected: cuisine.isSelected,
          onSelected: (value) {
            // Handle selection change if needed
            cuisine.isSelected = value; // Update the selection status
          },
        );
      }).toList(),
    );
  }
}

class CuisinePreferenceModel {
  final String title;
  bool isSelected;

  CuisinePreferenceModel({required this.title, this.isSelected = false});
}
