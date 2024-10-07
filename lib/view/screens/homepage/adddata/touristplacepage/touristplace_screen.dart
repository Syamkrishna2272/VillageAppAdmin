import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/touristplacepage/newplace_create_screen.dart';
import 'package:villageapp_admin/view/screens/homepage/servicewidget/newsportalpage/newscard_widget.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class TouristPlaceScreen extends StatelessWidget {
  const TouristPlaceScreen({super.key});

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
                    "Create Tourist Place",
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
              // Wrap HomeTextWidget and Container in a Row
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth / 20, vertical: screenHeight / 38),
                child: Row(
                  children: [
                    HomeTextWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: "Total 7 News on list",
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth / 23,
                      paddingLeft: 0,
                      paddingTop: 0,
                    ),
                    const Spacer(),
                    Container(
                      height: screenHeight / 18,
                      width: screenWidth / 2.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: const Color.fromARGB(255, 222, 221, 221),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "All News",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              NewsCardWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                imagePath: 'lib/asset/images/Rectangle 170.png',
              ),
              SizedBox(height: screenHeight / 100),
              NewsCardWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                imagePath: 'lib/asset/images/Rectangle 170.png',
              ),
              SizedBox(height: screenHeight / 100),
              NewsCardWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                imagePath: 'lib/asset/images/Rectangle 170.png',
              ),
              SizedBox(height: screenHeight / 100),
              NewsCardWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                imagePath: 'lib/asset/images/Rectangle 170.png',
              ),
              SizedBox(height: screenHeight / 100),
              NewsCardWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                imagePath: 'lib/asset/images/Rectangle 170.png',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const NewPlaceCreateScreen();
          }));
        },
        backgroundColor: const Color(0XFF427ECC),
        shape: const CircleBorder(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: screenWidth / 20,
                  color: Colors.white,
                ),
                Text(
                  'Create',
                  style: TextStyle(
                    fontSize: screenWidth / 33,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
