import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 25, right: screenWidth / 25),
      child: Row(
        children: [
          Container(
            height: screenHeight / 17,
            width: screenWidth / 3.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                border: Border.all(color: const Color(0XFFD2D2D2))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time,
                  color: Color(0XFFD2D2D2),
                ),
                Text(
                  "Open at",
                  style: TextStyle(color: Color.fromARGB(255, 135, 146, 142)),
                )
              ],
            ),
          ),
          SizedBox(
            width: screenWidth / 58,
          ),
          Container(
            height: screenHeight / 17,
            width: screenWidth / 3.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                border: Border.all(color: const Color(0XFFD2D2D2))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time,
                  color: Color(0XFFD2D2D2),
                ),
                Text(
                  "Close at",
                  style: TextStyle(color: Color.fromARGB(255, 135, 146, 142)),
                )
              ],
            ),
          ),
          SizedBox(
            width: screenWidth / 58,
          ),
          Container(
            height: screenHeight / 17,
            width: screenWidth / 3.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                border: Border.all(color: const Color(0XFFD2D2D2))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Exclude",
                  style: TextStyle(color: Color.fromARGB(255, 135, 146, 142)),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color.fromARGB(255, 76, 73, 73),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
