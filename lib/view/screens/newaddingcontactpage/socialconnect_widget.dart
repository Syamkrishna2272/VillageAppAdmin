import 'package:flutter/material.dart';

class SocialConnectWidget extends StatelessWidget {
  const SocialConnectWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.iconPaths, // Pass the icon image paths as a parameter
    required this.circleAvatarBackgroundColor,
    required this.borderColor,
  });

  final double screenWidth;
  final double screenHeight;
  final List<String> iconPaths; // List to handle multiple icons
  final Color circleAvatarBackgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(iconPaths.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: screenHeight / 85),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: circleAvatarBackgroundColor,
                child: Image.asset(iconPaths[index]),
              ),
              SizedBox(
                width: screenWidth / 45,
              ),
              Container(
                height: screenHeight / 15,
                width: screenWidth / 1.3,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.circular(screenWidth / 45),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
