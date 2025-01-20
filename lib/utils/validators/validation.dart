class VValidation {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Correo Requerido';
    }
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegExp.hasMatch(value)) {
      return 'Correo Inválido';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Contrasena Requerida';
    }
    if (value.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }
    final hasUppercase = value.contains(RegExp(r'[A-Z]'));
    final hasLowercase = value.contains(RegExp(r'[a-z]'));
    final hasDigits = value.contains(RegExp(r'[0-9]'));
    final hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    if (!hasUppercase) {
      return 'La contraseña debe tener al menos una letra mayúscula';
    }
    if (!hasLowercase) {
      return 'La contraseña debe tener al menos una letra minúscula';
    }
    if (!hasDigits) {
      return 'La contraseña debe tener al menos un número';
    }
    if (!hasSpecialCharacters) {
      return 'La contraseña debe tener al menos un carácter especial';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Numero de Telefono Requerido';
    }
    final phoneRegExp = RegExp(r'^[0-9]{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'El número de teléfono debe tener 10 dígitos';
    }
    if (!value.startsWith('3')) {
      return 'El número de teléfono debe comenzar con 3';
    }
    return null;
  }
}
