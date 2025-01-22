import 'package:flutter/material.dart';
import 'package:retail_sync/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:retail_sync/utils/device/device_utility.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DDeviceUtils.getAppBarHeight(),
        right: 24,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text(
            'Omitir',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
