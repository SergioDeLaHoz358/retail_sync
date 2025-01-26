import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retail_sync/common/widgets/login_signup/social_buttons.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: dark ? CColors.primaryColor : CColors.primaryColor,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            Text(
              ' Or continue with '.capitalize!,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: dark ? CColors.light : CColors.tertiaryTextColor,
                  ),
            ),
            Flexible(
              child: Divider(
                color: dark ? CColors.primaryColor : CColors.primaryColor,
                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        SocialButton(),
      ],
    );
  }
}
