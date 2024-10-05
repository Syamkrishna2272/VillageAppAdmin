import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/newaddingcontactpage/newadding_screen.dart';
import 'package:villageapp_admin/view/widgets/text_widget.dart';

class TaxiContactScreen extends StatelessWidget {
  final List<Map<String, dynamic>> contactData = [
    {'image': 'lib/asset/images/Ellipse 18.png', 'text': 'Robert Fox'},
    {
      'image': 'lib/asset/images/Ellipse 24.png',
      'text': 'Leslie Alexander Lor'
    },
    {'image': 'lib/asset/images/Ellipse 25.png', 'text': 'Kristin Watson'},
    {'image': 'lib/asset/images/Ellipse 30.png', 'text': 'Ralph Edwards'},
    {'image': 'lib/asset/images/Ellipse 31.png', 'text': 'Ralph Edwards'},
    {'image': 'lib/asset/images/Ellipse 32.png', 'text': 'Leslie Alexander'},
  ];
  TaxiContactScreen({super.key});

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
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth / 28, right: screenWidth / 28),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const NewContactAddingScreen();
                  }));
                },
                child: Container(
                  height: screenHeight / 11,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth / 35),
                      color: const Color(0XFF427ECC)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: screenWidth / 28,
                        backgroundColor:
                            const Color.fromARGB(255, 166, 190, 223),
                        child: Icon(
                          Icons.add,
                          size: screenWidth / 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 50,
                      ),
                      Text(
                        "Create new Person",
                        style: TextStyle(
                            fontSize: screenWidth / 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "Total 7 Persons Added",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 23,
                paddingLeft: screenWidth / 20,
                paddingTop: screenHeight / 30),
            SizedBox(height: screenHeight / 55),
            ListView.builder(
              itemCount: contactData.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final contact = contactData[index];

                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth / 35, vertical: screenWidth / 85),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFFF4F4F4),
                      borderRadius: BorderRadius.circular(screenWidth / 45),
                    ),
                    height: screenHeight / 11,
                    width: screenWidth,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(screenWidth / 28),
                          child: CircleAvatar(
                            radius: screenWidth / 15,
                            backgroundImage: AssetImage(contact['image']),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight,
                          width: screenWidth / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                contact['text'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth / 25,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth / 16),
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 200, 220, 246),
                          child: Icon(
                            Icons.edit,
                            color: Color(0XFF427ECC),
                          ),
                        ),
                        SizedBox(width: screenWidth / 38),
                        const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 247, 216, 208),
                            child: Icon(
                              Icons.delete,
                              color: Color(0XFFBE310C),
                            )),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
