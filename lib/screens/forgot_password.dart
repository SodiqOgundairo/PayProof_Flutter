import 'package:flutter/material.dart';
import 'package:payroof/screens/login.dart';

import '../helpers/styles.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Make the body scrollable
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Forgot Password',
                style: header,
              ),
              const Text(
                "Let's secure your account!",
                style: body,
              ),
              const SizedBox(height: 10),
              const Image(
                image: AssetImage('assets/images/createPassword.png'),
                height: 200, // Set a fixed height for the image
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  TextFormField(
                    decoration: inputTheme.copyWith(
                      labelText: 'Emai;/phone number',
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Login();
                          },
                        ));
                      },
                      style: pryBtn,
                      child: const Text('Reset Password'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Login();
                        },
                      ));
                    },
                    child: const Text('Back to Login'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
