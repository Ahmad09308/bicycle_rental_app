import 'package:bicycle_rental_app/Auth/res/colors.dart';
import 'package:bicycle_rental_app/Auth/res/padding.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  OnboardingPage({
    required this.imagePath,
    required this.title,
    required this.description, required String buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath, height: imageHeight),
          SizedBox(height: verticalSpacing),
          
          Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          SizedBox(height: smallVerticalSpacing),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: descriptionFontSize,
              color: descriptionColor,
            ),
          ),
        ],
      ),
    );
  }
}
