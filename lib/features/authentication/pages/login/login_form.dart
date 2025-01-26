import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/helpers/helper_functions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
