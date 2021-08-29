import 'package:flutter/material.dart';

class CustomFeaturesItem extends StatelessWidget {
  const CustomFeaturesItem({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.size,
  }) : super(key: key);

  final String imagePath;
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size,
          child: Image.asset(
            imagePath,
          ),
        ),
        Text(text),
      ],
    );
  }
}
