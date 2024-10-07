import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/taxiservicepage/taxiservice_screen.dart';
import 'package:villageapp_admin/view/screens/homepage/adddata/touristplacepage/touristplace_screen.dart';

class AdddataWidget extends StatelessWidget {
  final List<Map<String, dynamic>> addData = [
    {
      'image': 'lib/asset/images/Group 605 (1).png',
      'text': 'Jobs or Professions'
    },
    {'image': 'lib/asset/images/Group 608 (1).png', 'text': 'Taxi Services'},
    {'image': 'lib/asset/images/Vector (3).png', 'text': 'Bus Services'},
    {
      'image': 'lib/asset/images/Group 614 (1).png',
      'text': 'Shops and Business'
    },
    {
      'image': 'lib/asset/images/Frame (2).png',
      'text': 'Nearby Tourist Places'
    },
    {'image': 'lib/asset/images/Group 606 (1).png', 'text': 'Office Contacts'},
    {'image': 'lib/asset/images/Group 612 (1).png', 'text': 'Emergency'},
    {'image': 'lib/asset/images/Group 613 (1).png', 'text': 'Village Shorts'},
    {'image': 'lib/asset/images/Group 610 (1).png', 'text': 'Event Calender'},
  ];

  AdddataWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: addData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = addData[index];
          return GestureDetector(
            onTap: () => ontappItem(context, item['text']),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 234, 244, 252),
                    Color.fromARGB(255, 247, 249, 251)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(screenWidth / 45),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth,
                      height: screenHeight / 23,
                      child: Image.asset(addData[index]['image']),
                    ),
                    SizedBox(
                      height: screenHeight / 65,
                    ),
                    Text(
                      item['text'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth / 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void ontappItem(BuildContext context, String text) {
    switch (text) {
      case 'Taxi Services':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TaxiServiceScreen();
        }));
        break;
      case 'Nearby Tourist Places':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const TouristPlaceScreen();
        }));
      //   break;
      //   case 'Emergency':
      //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
      //     return EmergencyScreen();
      //   }));
    }
  }
}
