import 'package:flutter/material.dart';
import 'package:payroof/helpers/styles.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              // Background Image
              const Image(
                image: AssetImage('assets/images/appBarBg.png'),
                fit: BoxFit.cover,
                width: double.infinity, // Ensure image covers the width
                height: double.infinity, // Ensure image covers the height
              ),
              // Color Overlay
              Container(
                width: double.infinity,
                height: double.infinity,
                color: primaryColor.withOpacity(0.7),
              ),
              // Content (Avatar and other widgets)
              const SafeArea(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/images/Avatar.png'),
                        height: kToolbarHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Rest of your Scaffold body
    );
  }
}
