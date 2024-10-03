import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/basicdetailspage/basic_details_screen.dart';
import 'package:villageapp_admin/view/screens/homepage/homescreen.dart';
import 'package:villageapp_admin/view/widgets/button_widget.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.widget,
    required this.screenHeight,
    required this.screenWidth,
  });

  final BasicDetailsScreen widget;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ButtonWidget(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        buttonColor: const Color(0xFF427ECC),
        text: "Continue",
        fontSize: screenWidth / 28,
        textColor: Colors.white,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            }),
          );
        },
      ),
    );
  }
}
