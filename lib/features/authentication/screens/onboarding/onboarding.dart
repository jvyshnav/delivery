
import 'package:delivery/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:delivery/utils/constants/colors.dart';
import 'package:delivery/utils/constants/image_strings.dart';
import 'package:delivery/utils/constants/sizes.dart';
import 'package:delivery/utils/device/device_utility.dart';
import 'package:delivery/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(OnBoardingController());
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: DImages.onBoardingImage2,
                title: "Let's Make It Easy",
                subtitle:
                    "You have a  good decision for your Health and time.You have a  good decision for your Health and time.",
              ),
              OnBoardingPage(
                image: DImages.onBoardingImage1,
                title: "Let's Make It Easy",
                subtitle:
                    "You have a  good decision for your Health and time.You have a  good decision for your Health and time.",
              ),
              OnBoardingPage(
                image: DImages.onBoardingImage2,
                title: "Door Step Delivery",
                subtitle:
                    "Just relax in your home, we are your Delivery Partner.Just relax in your home, we are your Delivery Partner.",
              ),
            ],
          ),

          ///skipbutton
          Positioned(
              top: DDeviceUtils.getAppBarHeight(),
              right: DSizes.defaultSpace,
              child: TextButton(onPressed: ()=>controller.skipPage(), child: const Text("Skip"))),

          ///Dot navigation smooth page indicator
          Positioned(
              bottom: DDeviceUtils.getBottomNavigationBarHeight() + 25,
              left: DSizes.defaultSpace,
              child: SmoothPageIndicator(

                controller: controller.pageController,
                onDotClicked: controller.dotNavigationClick,
                count: 3,
                effect: JumpingDotEffect(
                    activeDotColor: dark ? DColors.light : DColors.dark,
                    dotHeight: 10,
                    dotWidth: 10),
              )),

          ///circular button
          Positioned(
              bottom: DDeviceUtils.getBottomNavigationBarHeight(),
              right: DSizes.defaultSpace,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: dark ? DColors.primary : Colors.black),
                  onPressed: ()=>controller.nextPage(),
                  child: const Icon(CupertinoIcons.right_chevron)))

          ///
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: DHelperFunctions.screenWidth() * 0.8,
              height: DHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: DSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
