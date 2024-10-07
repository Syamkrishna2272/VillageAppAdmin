import 'package:flutter/material.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: screenHeight / 9.5,
                      width: screenWidth / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            color: Color.fromARGB(255, 140, 140, 141),
                          ),
                          Text(
                            "Add image",
                            style: TextStyle(fontSize: screenWidth / 35),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth / 45),
                    Container(
                      height: screenHeight / 9.5,
                      width: screenWidth / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            color: Color.fromARGB(255, 140, 140, 141),
                          ),
                          Text(
                            "Add image",
                            style: TextStyle(fontSize: screenWidth / 35),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth / 45),
                    Container(
                      height: screenHeight / 9.5,
                      width: screenWidth / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            color: Color.fromARGB(255, 140, 140, 141),
                          ),
                          Text(
                            "Add image",
                            style: TextStyle(fontSize: screenWidth / 35),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth / 45),
                    Container(
                      height: screenHeight / 9.5,
                      width: screenWidth / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            color: Color.fromARGB(255, 140, 140, 141),
                          ),
                          Text(
                            "Add image",
                            style: TextStyle(fontSize: screenWidth / 35),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth / 45),
                    Container(
                      height: screenHeight / 9.5,
                      width: screenWidth / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            color: Color.fromARGB(255, 140, 140, 141),
                          ),
                          Text(
                            "Add image",
                            style: TextStyle(fontSize: screenWidth / 35),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
