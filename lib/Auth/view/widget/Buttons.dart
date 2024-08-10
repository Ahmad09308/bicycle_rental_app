// ignore_for_file: file_names, sort_child_properties_last

import 'package:bicycle_rental_app/Auth/res/Size.dart';
import 'package:bicycle_rental_app/Auth/res/colors.dart';
import 'package:bicycle_rental_app/Auth/res/padding.dart';
import 'package:bicycle_rental_app/Auth/res/strings.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String textTheButton;
  final VoidCallback onTap;

  const MainButton({
    super.key,
    required this.textTheButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: mainButtonSize.width,
          height: mainButtonSize.height,
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Center(
            child: Text(
              textTheButton,
              style: const TextStyle(color: buttonTextColor),
            ),
          ),
        ),
      ),
    );
  }
}

class MainButton2 extends StatelessWidget {
  final String textTheButton;
  final VoidCallback onTap;

  const MainButton2({
    super.key,
    required this.textTheButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: mainButtonSize.width,
            height: mainButtonSize.height,
            decoration: BoxDecoration(
                color: buttonBackgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: primaryColor)),
            child: Center(
              child: Text(
                textTheButton,
                style: const TextStyle(color: primaryColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CarDetailsButton extends StatelessWidget {
  final VoidCallback onTapBooklater;
  final VoidCallback onTapRiedNow;

  const CarDetailsButton(
      {super.key, required this.onTapBooklater, required this.onTapRiedNow});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onTapBooklater,
          child: const Text(bookLaterText),
          style: ElevatedButton.styleFrom(
            minimumSize: buttonSize,
            foregroundColor: primaryColor,
            backgroundColor: buttonBackgroundColor,
            side: const BorderSide(
              color: buttonBorderColor,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(width: buttonSpacing.horizontal),
        ElevatedButton(
          onPressed: onTapRiedNow,
          child: const Text(rideNowText),
          style: ElevatedButton.styleFrom(
            minimumSize: buttonSize,
            foregroundColor: buttonTextColor,
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}

class CircularProgressButton extends StatelessWidget {
  final double progress;
  final String buttonText;
  final VoidCallback onPressed;

  CircularProgressButton({
    required this.progress,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 70,
          height: 70,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 6,
            valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            backgroundColor: Colors.grey[200],
          ),
        ),
        FloatingActionButton(
          onPressed: onPressed,
          child: buttonText.isEmpty
              ? Icon(Icons.arrow_forward, color: Colors.white)
              : Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
          backgroundColor: Color.fromRGBO(0, 137, 85, 1),
          shape: CircleBorder(),
        ),
      ],
    );
  }
}
