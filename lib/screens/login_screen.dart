import 'package:flutter/material.dart';

import '/screens/registration_screen.dart';
import '/widgets/taxi_button.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 70.0),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100.0,
                  width: 100.0,
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'Sign In as a Rider',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Brand-Bold',
                  ),
                ),
                Column(
                  children: [
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        labelText: 'Email address',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    const SizedBox(height: 10.0),
                    const TextField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    const SizedBox(height: 40.0),
                    TaxiButton(
                      title: 'LOGIN',
                      onPressed: () {},
                    ),
                    TextButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(RegistrationScreen.routeName),
                        child:
                            const Text('Don\'t have an accoun, sign up here'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
