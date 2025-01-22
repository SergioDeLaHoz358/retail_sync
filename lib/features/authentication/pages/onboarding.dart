import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:retail_sync/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:retail_sync/features/authentication/pages/onboarding/onboarding_dot_navigation.dart';
import 'package:retail_sync/features/authentication/pages/onboarding/onboarding_next_button.dart';
import 'package:retail_sync/features/authentication/pages/onboarding/onboarding_page.dart';
import 'package:retail_sync/features/authentication/pages/onboarding/onboarding_skip.dart';

import 'package:retail_sync/utils/constants/image_string.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: CImages.onboarding_2,
                title: 'Escoge tu producto',
                subTitle:
                    'Facilitamos la busqueda de productos y ventas en tu tienda vecina\nTu producto perfecto te espera!',
              ),
              OnboardingPage(
                image: CImages.onboarding_1,
                title: 'Selecciona tu metodo de pago',
                subTitle:
                    'Facilitamos transacciones seguras y confiables, para la eficiencia en sus compras/ventas\nTu conveniencia, nuestra prioridad!',
              ),
              OnboardingPage(
                image: CImages.onboarding_3,
                title: 'Entrega eficaz',
                subTitle:
                    'Pagos rapidos y compras rapidas\nConecta, pide tu orden y menor costo',
              ),
            ],
          ),
          //Skip button
          const OnBoardingWidget(),
          //Dot indicator
          const OnBoardingDotNavigation(),
          //Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
