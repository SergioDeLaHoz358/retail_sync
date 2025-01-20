import 'package:flutter/material.dart';
import 'package:retail_sync/utils/constants/image_string.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollables Pages
          PageView(
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
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(height: 60),
          Image(
            width: HHelperFunctions.screenHeight() * 0.8,
            height: HHelperFunctions.screenHeight() * 0.5,
            image: AssetImage(image),
          ),
          Text(
            // 'Escoge tu producto',
            title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
              // 'Facilitamos la busqueda de productos y ventas en tiendas\nTu producto perfecto te espera',
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
