import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helpers/styles.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                'Login',
                style: header,
              ),
              const Text(
                'Sign in to your account to enjoy limitless offers',
                style: body,
              ),
              const SizedBox(height: 10),
              const Image(
                image: AssetImage('assets/images/signup.png'),
                height: 200, // Set a fixed height for the image
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  TextFormField(
                    decoration: inputTheme.copyWith(
                      labelText: 'Email/Phone number',
                    ),
                  ),
                  TextFormField(
                    decoration: inputTheme.copyWith(
                      counter: const Text(''),
                      labelText: 'Password',
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    obscureText: true,
                    maxLength: 4,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: pryBtn,
                      child: const Text('Login'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Signup();
                        },
                      ));
                    },
                    child: const Text(
                      'Don’t have an account? Let’s set up an account for you.It takes less than a minute.',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
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
