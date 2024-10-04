import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/newaddingcontactpage/socialconnect_widget.dart';
import 'package:villageapp_admin/view/widgets/button_widget.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class NewContactAddingScreen extends StatelessWidget {
  const NewContactAddingScreen({super.key});

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
                    "Create New",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
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
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth / 20, right: screenWidth / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CircleAvatar(
                    radius: screenWidth / 8,
                    backgroundImage:
                        const AssetImage('lib/asset/images/Ellipse 39.png'),
                  ),
                  SizedBox(width: screenWidth / 20),
                  Expanded(
                      child: Column(
                    children: [
                      TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                            labelText: 'Enter name',
                            labelStyle: TextStyle(
                                fontSize: screenWidth / 30,
                                color:
                                    const Color.fromARGB(255, 165, 166, 166)),
                            border: const UnderlineInputBorder()),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Enter email',
                            labelStyle: TextStyle(
                                fontSize: screenWidth / 30,
                                color:
                                    const Color.fromARGB(255, 165, 166, 166)),
                            border: const UnderlineInputBorder()),
                      )
                    ],
                  ))
                ]),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Phone Number',
                    labelStyle: TextStyle(
                        fontSize: screenWidth / 30,
                        color: const Color.fromARGB(255, 165, 166, 166)),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(
                        fontSize: screenWidth / 30,
                        color: const Color.fromARGB(255, 165, 166, 166)),
                  ),
                ),
                HomeTextWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    text: "Social Connect",
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth / 23,
                    paddingLeft: screenWidth / 65,
                    paddingTop: screenHeight / 30),
                SizedBox(
                  height: screenHeight / 58,
                ),
                SocialConnectWidget(
                  screenWidth: MediaQuery.of(context).size.width,
                  screenHeight: MediaQuery.of(context).size.height,
                  iconPaths: const [
                    'lib/asset/images/Group 7.png',
                    'lib/asset/images/Group 14.png',
                    'lib/asset/images/Social Icons.png',
                    'lib/asset/images/Social Icons (1).png',
                    'lib/asset/images/Group 8.png',
                    'lib/asset/images/Social Icons (2).png',
                    'lib/asset/images/Vector (2).png',
                  ],
                  circleAvatarBackgroundColor:
                      const Color.fromARGB(255, 215, 236, 246),
                  borderColor: const Color(0XFFD2D2D2),
                ),
                HomeTextWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    text: "Gallery",
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth / 23,
                    paddingLeft: screenWidth / 65,
                    paddingTop: screenHeight / 30),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 50),
                  child: Text(
                    "Images must be in a 1:1 format.",
                    style: TextStyle(fontSize: screenWidth / 26),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 58,
                ),
                // Added grid layout for containers
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: screenWidth / 55,
                  mainAxisSpacing: screenHeight / 65,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(6, (index) {
                    return Container(
                      height: screenHeight / 10,
                      width: screenWidth / 3.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 235, 235),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image,
                            size: screenWidth / 18,
                            color: Colors.grey[600],
                          ),
                          Text(
                            "Add image",
                            style: TextStyle(fontSize: screenWidth / 35),
                          )
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: screenHeight / 8,
                ),
                SizedBox(
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
                SizedBox(
                  height: screenHeight / 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
