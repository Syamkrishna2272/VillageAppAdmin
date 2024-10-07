import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class LocationReviewWidget extends StatelessWidget {
  const LocationReviewWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth / 25, right: screenWidth / 25),
          child: Container(
            height: screenHeight / 13,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6)),
            child: Padding(
              padding: EdgeInsets.all(screenWidth / 20),
              child: Row(
                children: [
                  Image.asset('lib/asset/images/Group 646.png'),
                  SizedBox(
                    width: screenWidth / 20,
                  ),
                  const Text(
                    "Tap and add location",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF427ECC)),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight / 65,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth / 25, right: screenWidth / 25),
          child: Container(
            height: screenHeight / 13,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
                color: const Color(0XFFF7F4F6)),
                child: Padding(
              padding: EdgeInsets.all(screenWidth / 20),
              child: Row(
                children: [
                  Image.asset('lib/asset/images/Review.png'),
                  SizedBox(
                    width: screenWidth / 20,
                  ),
                  const Text(
                    "Add review link",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF427ECC)),
                  )
                ],
              ),
            ),
          ),
        ),
        HomeTextWidget(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      text: "Category",
      fontWeight: FontWeight.w600,
      fontSize: screenWidth / 23,
      paddingLeft: 23,
      paddingTop: 20,
    ),
    Padding(
        padding: EdgeInsets.all(screenWidth / 28),
        child: TextFormField(
          textCapitalization: TextCapitalization.words,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
          ],
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0XFFD2D2D2)),
                borderRadius: BorderRadius.circular(screenWidth / 40),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0XFF427ECC)),
                borderRadius: BorderRadius.circular(screenWidth / 40),
              ),
              hintText: "Select Category",
              hintStyle: TextStyle(
                fontSize: screenWidth / 25,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 135, 146, 142),
              ),
              suffixIcon:
                  const Icon(Icons.keyboard_arrow_down_rounded)),
        )),
      ],
    );
  }
}