import 'package:flutter/material.dart';

class AdddataWidget extends StatelessWidget {
  final List<Map<String, dynamic>> addData = [
    {'image': 'lib/asset/images/Group 605.png', 'text': 'Jobs or Professions'},
    {'image': 'lib/asset/images/Group 608.png', 'text': 'Taxi Services'},
    {'image': 'lib/asset/images/Vector (1).png', 'text': 'Bus Services'},
    {'image': 'lib/asset/images/Group 614.png', 'text': 'Shops and Business'},
    {'image': 'lib/asset/images/Frame.png', 'text': 'Nearby Tourist Places'},
    {'image': 'lib/asset/images/Group 606.png', 'text': 'Office Contacts'},
    {'image': 'lib/asset/images/Group 612.png', 'text': 'Emergency'},
    {'image': 'lib/asset/images/Group 613.png', 'text': 'Village Shorts'},
    {'image': 'lib/asset/images/Group 610.png', 'text': 'Event Calender'},
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
            // onTap: () => ontappItem(context, item['text']),
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
                      width: screenWidth / 5,
                      height: screenHeight / 18,
                      child: Image.asset(addData[index]['image']),
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

  // void ontappItem(BuildContext context, String text) {
  //   switch (text) {
  //     case 'Taxi Services':
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  //         return TaxiServiceScreen();
  //       }));
  //       break;
  //     case 'Nearby Tourist Places':
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  //         return const TouristPlaceScreen();
  //       }));
  //       break;
  //       case 'Emergency':
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context){
  //         return EmergencyScreen();
  //       }));
  //   }
  // }
}
