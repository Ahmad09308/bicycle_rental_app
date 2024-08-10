// ignore_for_file: prefer_const_constructors

import 'package:bicycle_rental_app/Auth/view/widget/Buttons.dart';
import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/welcome.png', height: 250),
            const SizedBox(height: 20),
            Column(
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Text(
                  'Have a better sharing experience',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 180),
            MainButton(
              textTheButton: 'Create an account',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
            ),
            MainButton2(
              textTheButton: 'Log In',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
