import 'package:flutter/material.dart';

import '../../Navigation/route_paths.dart';
import '../../utils/common_var.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1000), () async {
      if (true) {
        Navigator.pushReplacementNamed(context, RoutePaths.loginscreen);
      } else {
        Navigator.pushReplacementNamed(context, RoutePaths.dashboard);
      }
    });
    // Navigator.pushNamed(context, RoutePaths.dashboard);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Hero(
        tag: "flash_icon",
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                style:
                    TextStyle(fontSize: 45, color: AppColors.primarytextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
