import 'package:flutter/material.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/constants/image_string.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? CColors.primaryColor : CColors.primaryColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(CImages.google),
              height: 24,
              width: 24,
            ),
          ),
        ),
      ],
    );
  }
}
