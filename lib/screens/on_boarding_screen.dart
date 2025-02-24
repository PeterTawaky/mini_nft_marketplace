import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: ,
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.64, -0.76),
              end: Alignment(-0.64, 0.76),
              colors: [ColorManager.purple, ColorManager.purpleLight],
            ),
          ),
          child: Stack(
            children: [
              Image.asset(
                ImageManager.onBoarding,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      StringManager.titleOnBoardingPage,
                      style: TextStyle(
                        color: ColorManager.white,
                        fontSize: FontSize.fs36_04.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: FontManager.sfPro,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
