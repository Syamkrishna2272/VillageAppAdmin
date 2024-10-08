import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/taxiservicepage/taxicontact_screen.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class TaxiServiceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> officeData = [
    {'image': 'lib/asset/images/image 1 (1).png', 'text': 'Car Service'},
    {'image': 'lib/asset/images/image 2 (1).png', 'text': 'Auto Rickshaw'},
    {'image': 'lib/asset/images/image 3 (1).png', 'text': 'Pickup Vans'},
    {'image': 'lib/asset/images/image 4 (1).png', 'text': 'Bus Service'},
  ];

  TaxiServiceScreen({super.key});

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
                    "Taxi Services",
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
        child: Column(
          children: [
            HomeTextWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              text: "Total 7 Services",
              fontWeight: FontWeight.w700,
              fontSize: screenWidth / 20,
              paddingLeft: screenWidth / 20,
              paddingTop: screenHeight / 30,
            ),
            SizedBox(height: screenHeight / 38),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
              child: SizedBox(
                height: screenHeight / 7, // Adjust height if needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = officeData[index];
                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth / 30),
                      child: GestureDetector(
                        onTap: () => ontappItem(context, item['text']),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Container for the image
                            Container(
                              width: screenWidth / 5,
                              height:
                                  screenHeight / 10, // Adjust container height
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: const Color(0XFFD9D9D9),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.circular(screenWidth / 45),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: screenWidth / 5,
                                  height: screenHeight / 18,
                                  child: Image.asset(item['image']),
                                ),
                              ),
                            ),
                            // SizedBox for spacing between container and text
                            SizedBox(height: screenHeight / 60),
                            // Text displayed below the container
                            Text(
                              item['text'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth / 32,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: screenHeight / 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
              child: SizedBox(
                height: screenHeight / 7, // Adjust height if needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = officeData[index];
                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth / 30),
                      child: GestureDetector(
                        onTap: () => ontappItem(context, item['text']),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Container for the image
                            Container(
                              width: screenWidth / 5,
                              height:
                                  screenHeight / 10, // Adjust container height
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: const Color(0XFFD9D9D9),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.circular(screenWidth / 45),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: screenWidth / 5,
                                  height: screenHeight / 18,
                                  child: Image.asset(item['image']),
                                ),
                              ),
                            ),
                            // SizedBox for spacing between container and text
                            SizedBox(height: screenHeight / 60),
                            // Text displayed below the container
                            Text(
                              item['text'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth / 32,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void ontappItem(BuildContext context, String text) {
    switch (text) {
      case 'Car Service':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TaxiContactScreen();
        }));
        break;
    }
  }
}
