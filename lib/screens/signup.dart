import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payroof/screens/create_password.dart';
import 'package:payroof/screens/login.dart';

import '../helpers/styles.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isChecked = false; // State variable to track checkbox state
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
                'Signup',
                style: header,
              ),
              const Text(
                "Let's get your account set up to enjoy the goodies",
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
                      labelText: 'Name',
                    ),
                  ),
                  TextFormField(
                    decoration: inputTheme.copyWith(
                      labelText: 'Phone Number',
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                  TextFormField(
                    decoration: inputTheme.copyWith(
                      labelText: 'Email',
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue!;
                          });
                        },
                      ),
                      const Text('I agree to the terms and conditions'),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const CreatePassword();
                          },
                        ));
                      },
                      style: pryBtn,
                      child: const Text('Continue'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Login();
                        },
                      ));
                    },
                    child: const Text(
                      "Already have an account? Let's get you signed in!",
                      style: small,
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
