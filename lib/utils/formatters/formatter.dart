import 'package:intl/intl.dart';

class FFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'es_CO', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Asegurando que el número tiene exactamente 10 dígitos
    if (phoneNumber.length == 10) {
      return '+57 ${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.startsWith('+57') && phoneNumber.length == 13) {
      // Caso donde ya incluye el prefijo +57
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6, 9)} ${phoneNumber.substring(9)}';
    }

    // Retorna el número original si no cumple con las reglas
    return phoneNumber;
  }
}
