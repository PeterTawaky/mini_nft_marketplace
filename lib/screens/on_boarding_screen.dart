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
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 70.h),
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
                      Spacer(),
                      ClipRRect(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          width: 306.31.w,
                          height: 191.02.h,
                          child: Column(
                            children: [
                              Text(
                                'Explore and Mint NFTs',
                                style: TextStyle(color: ColorManager.white),
                              ),
                              Text(
                                'You can buy and sell the NFTs of the best \nartists in the world.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: ColorManager.grey),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Get started now',
                                  style: TextStyle(color: ColorManager.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
