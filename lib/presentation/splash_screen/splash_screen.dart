import 'package:flutter/material.dart';
import 'package:closetmixer/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.newUserScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.purple10001,
                theme.colorScheme.primaryContainer,
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 26.h,
              top: 243.v,
              right: 26.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Closet Mixr",
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Text(
                    "closet organisation app",
                    style: CustomTextStyles.titleLargeMarcellus,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
