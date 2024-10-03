import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/basicdetailspage/basic_details_screen.dart';

class ClearContinueButton extends StatelessWidget {
  const ClearContinueButton({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: screenHeight / 17,
                width: screenWidth / 2.4,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFF427ECC)),
                    borderRadius: BorderRadius.circular(screenWidth / 45)),
                child: const Center(
                    child: Text(
                  "Clear",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Color(0XFF427ECC)),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const BasicDetailsScreen();
                }));
              },
              child: Container(
                height: screenHeight / 17,
                width: screenWidth / 2.4,
                decoration: BoxDecoration(
                    color: const Color(0XFF427ECC),
                    border: Border.all(color: const Color(0XFF427ECC)),
                    borderRadius: BorderRadius.circular(screenWidth / 45)),
                child: const Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                )),
              ),
            )
          ],
        ));
  }
}
