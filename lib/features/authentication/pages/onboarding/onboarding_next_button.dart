import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/device/device_utility.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';
import 'package:retail_sync/features/authentication/controllers/onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Positioned(
      right: 24,
      bottom: DDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          backgroundColor: dark ? CColors.primaryTextColor : CColors.dark,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(4),
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
