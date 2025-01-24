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
          backgroundColor: dark ? Colors.transparent : CColors.buttonSecondary,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(4),
          elevation: 1,
          shadowColor: Colors.transparent,
        ).copyWith(
          side:
              WidgetStateProperty.all(BorderSide.none), // Quita cualquier borde
          overlayColor: WidgetStateProperty.all(CColors
              .buttonTertiary), // Evita el efecto azul al presionar o enfocar
        ),
        child: Icon(Iconsax.arrow_right_3, color: CColors.primaryTextColor),
      ),
    );
  }
}
