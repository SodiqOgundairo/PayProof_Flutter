import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 10), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (BuildContext context) {
  //         return const HomePage();
  //       }),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/payproofLogo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
