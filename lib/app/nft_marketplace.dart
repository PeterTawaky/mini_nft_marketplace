import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';

class NftMarketplace extends StatelessWidget {
  const NftMarketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        378.39,
        787.41,
      ), //the size of screen that designer work on it on figma
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteName.onBoardingScreen,
          routes: RouteManager.routes,
        );
      },
    );
  }
}
