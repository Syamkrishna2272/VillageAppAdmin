import 'package:flutter/material.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      this.imagePath});

  final double screenWidth;
  final double screenHeight;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 25, right: screenWidth / 25),
      child: Container(
        width: screenWidth,
        height: screenHeight / 5.8,
        decoration: const BoxDecoration(
            // color: Color(0XFFF7F4F6),
            color: Colors.amber),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  """മുഖ്യമന്ത്രിയുടെ മകൾ വീണ
യ്‌ക്ക് കുരുക്ക്; അന്വേഷണം 
എസ്എഫ്ഐഒയ്ക്ക് ....""",
                  style: TextStyle(
                      fontSize: screenWidth / 25, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: screenWidth / 22),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 38),
                  child: Container(
                    height: screenHeight / 10,
                    width: screenWidth / 5,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(screenWidth / 45)),
                    child: Image.asset(
                      imagePath!,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.mode_edit_rounded,
                  color: const Color(0XFF427ECC),
                  size: screenWidth / 20,
                ),
                const SizedBox(width: 4),
                const Text(
                  "Edit",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),

                // Vertical line separator
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Container(
                    width: 1,
                    height: screenWidth / 20,
                    color: Colors.grey,
                  ),
                ),

                Icon(Icons.delete,
                    color: const Color(0XFFBE310C), size: screenWidth / 20),
                const SizedBox(width: 4),
                const Text(
                  "Delete",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
