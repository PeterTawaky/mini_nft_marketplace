import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/screens/home_screen.dart';
import 'package:mini_nft_marketplace/screens/on_boarding_screen.dart';
import 'package:mini_nft_marketplace/screens/status_screen.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.onBoardingScreen: (context) => OnBoardingScreen(),
    RouteName.statusScreen: (context) => StatusScreen(),
    RouteName.homeScreen: (context) => HomeScreen(),
  };
}

class RouteName {
  static const String onBoardingScreen = 'on_boarding_screen';
  static const String statusScreen = 'status_screen';
  static const String homeScreen = 'home_screen';
}
