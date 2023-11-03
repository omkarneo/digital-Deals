import 'package:flutter/material.dart';

import '../../Navigation/route_paths.dart';
import '../../utils/common_var.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Hero(
              tag: "flash_icon",
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "DIGITAL",
                        style: TextStyle(
                            fontSize: 45,
                            color: AppColors.primarytextColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "DEALS",
                      style: TextStyle(
                          fontSize: 45, color: AppColors.primarytextColor),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              // padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: AppColors.primaryIconColor,
                    // iconColor: Colors.white,
                    // fillColor: Colors.white,
                    // filled: true,
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: AppColors.backgroundColor, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.backgroundColor, width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.backgroundColor, width: 2),
                    ),
                    label: Text(
                      "Username",
                      style: TextStyle(
                          color: AppColors.primarytextColor,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ),
            Padding(
              // padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.primaryIconColor,
                    ),
                    // fillColor: Colors.white,
                    // filled: true,
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: AppColors.backgroundColor, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.backgroundColor, width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.backgroundColor, width: 2),
                    ),
                    label: Text(
                      "Password",
                      style: TextStyle(
                          color: AppColors.primarytextColor,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(MediaQuery.sizeOf(context).width - 20, 60),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RoutePaths.dashboard,
                      (route) => false,
                    );
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        color: AppColors.secondaryTextColor, fontSize: 30),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Forgot Password?",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primarytextColor,
                  fontWeight: FontWeight.w500),
            )
          ]),
    );
  }
}
