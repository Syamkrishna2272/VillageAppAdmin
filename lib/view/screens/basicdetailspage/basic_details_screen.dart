import 'package:flutter/material.dart';
import 'package:villageapp_admin/view/screens/basicdetailspage/widget/button.dart';
import 'package:villageapp_admin/view/screens/basicdetailspage/widget/emailform.dart';
import 'package:villageapp_admin/view/screens/basicdetailspage/widget/textform2.dart';
import 'package:villageapp_admin/view/screens/basicdetailspage/widget/textfrom1.dart';

class BasicDetailsScreen extends StatefulWidget {
  final bool fromUserDataWidget;
  const BasicDetailsScreen({super.key, this.fromUserDataWidget = false});

  @override
  State<BasicDetailsScreen> createState() => _BasicDetailsScreenState();
}

class _BasicDetailsScreenState extends State<BasicDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            widget.fromUserDataWidget ? 'Full Name' : 'Basic Details',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "This helps us understand you better. Please fill",
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    "with true information.",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight / 20),
                const Text(
                  "Enter First Name",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: screenHeight / 80),

                //First name textform field
                TextFormField1(screenWidth: screenWidth),
                SizedBox(height: screenHeight / 35),
                const Text(
                  "Enter Last Name",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: screenHeight / 80),

                //Last name textform field
                TextFormField2(screenWidth: screenWidth),
                SizedBox(height: screenHeight / 35),
                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: screenHeight / 80),
                EmailFormField(screenWidth: screenWidth),

                SizedBox(
                  height: screenHeight / 3.4,
                ),
                Button(
                    widget: widget,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
