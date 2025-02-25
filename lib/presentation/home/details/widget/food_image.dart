import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  final String img;
  final int id;

  const FoodImage({
    super.key,
    required this.id,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *
              .38, // Added height constraint
          child: Hero(
            tag: id,
            child: Image.network(
              img,
              fit: BoxFit.fitHeight, // Prevents overflow
            ),
          ),
        ),
      ],
    );
  }
}
