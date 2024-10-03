import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:villageapp_admin/view/screens/loginpage/widget/clear_continue.dart';

class LoginScreen extends StatefulWidget {
  final bool fromUserDataWidget;
  const LoginScreen({super.key, this.fromUserDataWidget = false});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text(
              "Login",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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
                        "Enter Email",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: screenHeight / 80),

                      TextFormField(
                        textCapitalization: TextCapitalization.words,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0XFFD2D2D2)),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0XFF427ECC)),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: screenWidth / 30,
                            color: const Color.fromARGB(255, 135, 146, 142),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight / 28),
                      const Text(
                        "Enter Password",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: screenHeight / 80),

                      TextFormField(
                        textCapitalization: TextCapitalization.words,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0XFFD2D2D2)),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0XFF427ECC)),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: screenWidth / 30,
                            color: const Color.fromARGB(255, 135, 146, 142),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight / 28),
                      const Text(
                        "Adminid",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: screenHeight / 80),

                      TextFormField(
                        textCapitalization: TextCapitalization.words,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0XFFD2D2D2)),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0XFF427ECC)),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          hintText: "Id",
                          hintStyle: TextStyle(
                            fontSize: screenWidth / 30,
                            color: const Color.fromARGB(255, 135, 146, 142),
                          ),
                        ),
                      ),
                      // Spacer(),
                      SizedBox(height: screenHeight / 3.4),
                      ClearContinueButton(
                          screenHeight: screenHeight, screenWidth: screenWidth)
                    ])))));
  }
}
