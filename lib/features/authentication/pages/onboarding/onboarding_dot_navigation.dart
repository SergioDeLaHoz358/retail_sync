import 'package:flutter/material.dart';
import 'package:retail_sync/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/device/device_utility.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = HHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: 24,
      child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark
                  ? CColors.primaryColor
                  : const Color.fromARGB(156, 255, 173, 72),
              dotHeight: 6)),
    );
  }
}
