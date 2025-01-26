import 'package:flutter/material.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/constants/image_string.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 32),
        Image(
          height: 150,
          image: AssetImage(dark ? CImages.lightAppLogo : CImages.darkAppLogo),
        ),
        SizedBox(height: 12),
        Text(
          'Bienvenido de nuevo',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: dark ? CColors.primaryColor : CColors.primaryColor,
              ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'Me alegro de volver a verte 😊\nInicia sesión en tu cuenta a continuación',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
