import 'package:flutter/material.dart';

class TicketWIdget extends StatelessWidget {
  const TicketWIdget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: screenHeight / 17,
          width: screenWidth / 2.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth / 45),
              border: Border.all(color: const Color(0XFFD2D2D2))),
          child: Padding(
            padding: EdgeInsets.all(screenWidth / 32),
            child: const Text(
              "Enter amount",
              style:
                  TextStyle(color: Color.fromARGB(255, 135, 146, 142)),
            ),
          ),
        ),
        const Text("For"),
        Container(
            height: screenHeight / 17,
            width: screenWidth / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                border: Border.all(color: const Color(0XFFD2D2D2))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Adult",
                  style: TextStyle(
                      color: Color.fromARGB(255, 135, 146, 142)),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color.fromARGB(255, 76, 73, 73),
                ),
              ],
            )),
      ],
    );
  }
}