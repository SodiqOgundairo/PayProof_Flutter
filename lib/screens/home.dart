import 'package:flutter/material.dart';
import 'package:payroof/helpers/styles.dart';

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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: white,
                ),
                child: const Text('Login'),
              ),
            ),
            const Text('Or'),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      foregroundColor: primaryColor,
                      side: const BorderSide(color: primaryColor)),
                  child: const Text('SignUp')),
            )
          ],
        ),
      ),
    );
  }
}
