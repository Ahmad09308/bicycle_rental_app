// ignore_for_file: library_private_types_in_public_api, file_names, non_constant_identifier_names

import 'package:bicycle_rental_app/Auth/res/colors.dart';
import 'package:bicycle_rental_app/Auth/res/padding.dart';
import 'package:flutter/material.dart';

class TextFieldPassword extends StatefulWidget {
  final TextEditingController password;
  final String hintText;

  const TextFieldPassword({
    super.key,
    required this.password,
    required this.hintText,
  });

  @override
  _TextFieldPasswordState createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor), // استخدام اللون من ملف الألوان
            borderRadius: BorderRadius.circular(8.0),
          ),
          width: 362,
          height: 60,
          child: TextField(
            controller: widget.password,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: Padding(
                padding: iconPadding,
                child: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _toggleVisibility,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldModel extends StatelessWidget {
  final TextEditingController ControllerText;
  final String hintText;

  const TextFieldModel({
    super.key,
    required this.ControllerText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor), // استخدام اللون من ملف الألوان
            borderRadius: BorderRadius.circular(8.0),
          ),
          width: 362,
          height: 60,
          child: TextField(
            controller: ControllerText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
