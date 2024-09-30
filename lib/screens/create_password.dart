import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payroof/screens/login.dart';

import '../helpers/styles.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
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
                'Create Password',
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
                      counter: const Text(''),
                      labelText: 'Password',
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    obscureText: true,
                    maxLength: 4,
                  ),
                  TextFormField(
                    decoration: inputTheme.copyWith(
                      counter: const Text(''),
                      labelText: 'Confirm Password',
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Login();
                          },
                        ));
                      },
                      style: pryBtn,
                      child: const Text('Signup'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password'),
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
