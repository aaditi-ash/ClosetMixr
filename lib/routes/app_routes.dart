import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/new_user_screen/new_user_screen.dart';
import '../presentation/home_page_container_screen/home_page_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/outfit_add_dialog/outfit_add_dialog.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String newUserScreen = '/new_user_screen';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String homePage = '/home_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String outfitaddDialog = '/outfit_add_dialog';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    newUserScreen: (context) => NewUserScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    outfitaddDialog : (context) => OutfitAdd(),
  };
}

