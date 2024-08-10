import 'package:bicycle_rental_app/Auth/view/widget/Buttons.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Your mobile number'),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Gender'),
            ),
            SizedBox(height: 20),
            MainButton(
              textTheButton: 'Sign up',
              onTap: () {},
            ),
            SizedBox(height: 10),
            Text('or', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            MainButton(
              textTheButton: 'Sign up with Gmail',
              onTap: () {},
            ),
            MainButton(
              textTheButton: 'Sign up with Facebook',
              onTap: () {},
            ),
            MainButton(
              textTheButton: 'Sign up with Apple',
              onTap: () {},
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('Already have an account? Sign in', style: TextStyle(color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }
}
