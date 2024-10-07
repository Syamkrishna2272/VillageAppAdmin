import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/touristplacepage/widget/addimage_widget.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/touristplacepage/widget/location_review_widget.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/touristplacepage/widget/ticket_widget.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/touristplacepage/widget/time_widget.dart';
import 'package:villageapp_admin/view/widgets/button_widget.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class NewPlaceCreateScreen extends StatelessWidget {
  const NewPlaceCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: screenHeight / 10,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: screenWidth / 15,
            ),
            SizedBox(width: screenWidth / 40),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create News",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: screenWidth / 12,
            ),
            SizedBox(width: screenWidth / 15),
            const CircleAvatar(
              backgroundImage: AssetImage('lib/asset/images/Ellipse 52.png'),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "*all fields are mandatory",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 35,
                paddingLeft: 20,
                paddingTop: 0,
                color: const Color.fromARGB(255, 130, 134, 133),
              ),
              AddImageContainer(
                  screenHeight: screenHeight, screenWidth: screenWidth),
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
              HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "Opening Time",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 23,
                paddingLeft: 20,
                paddingTop: 20,
              ),
              SizedBox(
                height: screenHeight / 45,
              ),
              TimeWidget(screenWidth: screenWidth, screenHeight: screenHeight),
              HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "Ticket Fair",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 23,
                paddingLeft: 20,
                paddingTop: 20,
              ),
              SizedBox(
                height: screenHeight / 45,
              ),
              TicketWIdget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "+ add new row",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 25,
                paddingLeft: 20,
                paddingTop: 20,
                color: const Color(0XFF427ECC),
              ),
              HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "External Links",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 23,
                paddingLeft: 20,
                paddingTop: 20,
              ),
              SizedBox(height: screenHeight / 75),
              LocationReviewWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              Padding(
                padding: EdgeInsets.all(screenWidth / 28),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Title',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth / 30,
                        color: const Color.fromARGB(255, 135, 146, 142),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 28),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Content',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth / 30,
                        color: const Color.fromARGB(255, 135, 146, 142),
                      )),
                ),
              ),
              SizedBox(
                height: screenHeight / 5,
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 28),
                child: SizedBox(
                  width: screenWidth,
                  child: ButtonWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      buttonColor: const Color(0XFF427ECC),
                      text: 'Continue',
                      fontSize: screenWidth / 25,
                      textColor: Colors.white,
                      onPressed: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
