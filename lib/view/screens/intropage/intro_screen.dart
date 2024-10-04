import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/loginpage/login_screen.dart';

import 'package:villageapp_admin/view/widgets/button_widget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF427ECC),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight / 13,
                    width: screenWidth / 2.4,
                    decoration: BoxDecoration(
                      color: const Color(0xFF427ECC),
                      border: Border.all(
                        color: Colors.white,
                        width: screenWidth / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "App Logo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth / 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Text(
                    "Check everything in this app text here",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: screenWidth / 25,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: screenHeight / 20,
              left: screenWidth / 15,
              right: screenWidth / 15,
              child: SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  buttonColor: Colors.white,
                  text: 'LOGIN TO ACCOUNT ',
                  fontSize: screenWidth / 28,
                  fontWeight: FontWeight.w500,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  textColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
