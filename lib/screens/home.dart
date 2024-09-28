import 'package:flutter/material.dart';
import 'package:payroof/helpers/styles.dart';
import 'package:payroof/screens/signup.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 120,
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/payproofLogo.png'),
              width: 200,
            ),
            const Expanded(
              child: Image(
                image: AssetImage('assets/images/onboarding.png'),
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
                child: const Text('Login'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'OR',
              style: body,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Signup();
                      },
                    ));
                  },
                  style: pryBtnOutline,
                  child: const Text('SignUp')),
            )
          ],
        ),
      ),
    );
  }
}
