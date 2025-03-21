import 'package:flutter/cupertino.dart';

import 'custom_choice_chip.dart';

class Intolerances extends StatelessWidget {
  Intolerances({super.key});

  final List<IntoleranceModel> intolerances = [
    IntoleranceModel(label: 'Dairy', isSelected: false),
    IntoleranceModel(label: 'Egg', isSelected: false),
    IntoleranceModel(label: 'Gluten', isSelected: false),
    IntoleranceModel(label: 'Grain', isSelected: false),
    IntoleranceModel(label: 'Peanut', isSelected: false),
    IntoleranceModel(label: 'Seafood', isSelected: false),
    IntoleranceModel(label: 'Sesame', isSelected: false),
    IntoleranceModel(label: 'Shellfish', isSelected: false),
    IntoleranceModel(label: 'Soy', isSelected: false),
    IntoleranceModel(label: 'Sulfite', isSelected: false),
    IntoleranceModel(label: 'Tree Nut', isSelected: false),
    IntoleranceModel(label: 'Wheat', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.start, // Align chips to start
      crossAxisAlignment:
          WrapCrossAlignment.start, // Align chips to the start vertically
      children: intolerances.map((intolerance) {
        return CustomChoiceChip(
          title: intolerance.label,
          isSelected: intolerance.isSelected,
          onSelected: (value) {
            // Handle selection change if needed
          },
        );
      }).toList(),
    );
  }
}

class IntoleranceModel {
  final String label;
  final bool isSelected;

  IntoleranceModel({
    required this.label,
    required this.isSelected,
  });
}
