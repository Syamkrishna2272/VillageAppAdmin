import 'package:flutter/material.dart';

class AddImageContainer extends StatelessWidget {
  const AddImageContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: screenHeight / 9.5,
              width: screenWidth / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    color: Color.fromARGB(255, 140, 140, 141),
                  ),
                  Text(
                    "Add image",
                    style: TextStyle(fontSize: screenWidth / 35),
                  )
                ],
              ),
            ),
            SizedBox(width: screenWidth / 45),
            Container(
              height: screenHeight / 9.5,
              width: screenWidth / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    color: Color.fromARGB(255, 140, 140, 141),
                  ),
                  Text(
                    "Add image",
                    style: TextStyle(fontSize: screenWidth / 35),
                  )
                ],
              ),
            ),
            SizedBox(width: screenWidth / 45),
            Container(
              height: screenHeight / 9.5,
              width: screenWidth / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    color: Color.fromARGB(255, 140, 140, 141),
                  ),
                  Text(
                    "Add image",
                    style: TextStyle(fontSize: screenWidth / 35),
                  )
                ],
              ),
            ),
            SizedBox(width: screenWidth / 45),
            Container(
              height: screenHeight / 9.5,
              width: screenWidth / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    color: Color.fromARGB(255, 140, 140, 141),
                  ),
                  Text(
                    "Add image",
                    style: TextStyle(fontSize: screenWidth / 35),
                  )
                ],
              ),
            ),
            SizedBox(width: screenWidth / 45),
            Container(
              height: screenHeight / 9.5,
              width: screenWidth / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    color: Color.fromARGB(255, 140, 140, 141),
                  ),
                  Text(
                    "Add image",
                    style: TextStyle(fontSize: screenWidth / 35),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}