import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
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
              LogoSection(),
              const SizedBox(height: 32.0),
              LoginForm(),
              const SizedBox(height: 32.0),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
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

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'Escribe tu correo electrónico',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Escribe tu contraseña',
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Recordar contraseña'),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor:
                        dark ? CColors.primaryColor : CColors.primaryColor,
                  ),
                  child: Text('Olvidaste tu contraseña?'),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Iniciar Sesion'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('¿No tienes una cuenta?'),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: dark
                        ? CColors.tertiaryTextColor
                        : CColors.tertiaryTextColor,
                  ),
                  child: Text('Crear una cuenta'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
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
        Row(
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
        ),
      ],
    );
  }
}
