import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retail_sync/common/widgets/login_signup/login_divider.dart';
import 'package:retail_sync/features/authentication/pages/login/login_form.dart';
import 'package:retail_sync/features/authentication/pages/login/login_header.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/constants/image_string.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 56.0, bottom: 24.0, left: 24.0, right: 24.0),
          child: Column(
            children: [
              LoginHeader(),
              const SizedBox(height: 32.0),
              LoginForm(),
              const SizedBox(height: 32.0),
              LoginDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
