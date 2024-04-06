import 'package:closetmixer/presentation/home_page/home_page.dart';
import 'package:closetmixer/widgets/custom_elevated_button.dart';
import 'package:closetmixer/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:closetmixer/core/app_export.dart';

class NewUserScreen extends StatelessWidget {
  NewUserScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img941,
                height: 1.v,
              ),
              SizedBox(height: 77.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 237.h,
                  margin: EdgeInsets.only(
                    left: 32.h,
                    right: 40.h,
                  ),
                  child: Text(
                    "Nothing in your closet !!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: 67.v),
              CustomElevatedButton(
                text: "Add Items",
                margin: EdgeInsets.only(
                  left: 14.h,
                  right: 25.h,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/outfit_add_dialog');
                },
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 21.v,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 105.h),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        if (type == BottomBarEnum.Homeline1) {
          // Navigate to the home page
          Navigator.pushNamed(context, '/home_page_container_screen');
        } else {
          // For other bottom bar options, handle navigation accordingly
          Navigator.pushNamed(context, '/home_page_container_screen');
        }
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeline1:
        return AppRoutes.homePage;
      case BottomBarEnum.Bookmarkline1:
        return "/";
      case BottomBarEnum.Settings4line:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
