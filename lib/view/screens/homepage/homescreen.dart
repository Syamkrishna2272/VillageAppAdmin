import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/adddata_widget.dart';
import 'package:villageapp_admin/view/screens/homepage/servicewidget/service_screen.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  get quickaccessData => null;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 252, 247),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: const Color(0xFF427ECC),
              size: screenWidth / 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: screenWidth / 36,
                    ),
                  ),
                  Text(
                    "Katharammal",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth / 25),
                  )
                ],
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: screenWidth / 15,
            ),
            SizedBox(width: screenWidth / 40),
            GestureDetector(
              onTap: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return const UserProfileScreen();
                // }));
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('lib/asset/images/Ellipse 52.png'),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 25,
              ),
              ServiceWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Add Data",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 20,
                  paddingTop: screenHeight / 30),
              SizedBox(height: screenHeight / 35),
              AdddataWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 18,
              ),
              const Text("Dhoomatech.com, All rights reserved"),
              SizedBox(
                height: screenHeight / 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
