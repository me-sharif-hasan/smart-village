import 'package:flutter/foundation.dart';

class AppUtils {
  // Format Bengali numbers
  static String formatBengaliNumber(int number) {
    const bengaliDigits = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];
    final englishNumber = number.toString();
    String bengaliNumber = '';
    
    for (int i = 0; i < englishNumber.length; i++) {
      final digit = int.parse(englishNumber[i]);
      bengaliNumber += bengaliDigits[digit];
    }
    
    return bengaliNumber;
  }
  
  // Validate Bengali phone number
  static bool isValidBangladeshiPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    final digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
    
    // Check if it's a valid Bangladeshi mobile number
    if (digitsOnly.length == 11) {
      return digitsOnly.startsWith('01');
    } else if (digitsOnly.length == 13) {
      return digitsOnly.startsWith('880');
    }
    
    return false;
  }
  
  // Format date in Bengali
  static String formatBengaliDate(DateTime date) {
    const bengaliMonths = [
      'জানুয়ারি', 'ফেব্রুয়ারি', 'মার্চ', 'এপ্রিল', 'মে', 'জুন',
      'জুলাই', 'আগস্ট', 'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর'
    ];
    
    final day = formatBengaliNumber(date.day);
    final month = bengaliMonths[date.month - 1];
    final year = formatBengaliNumber(date.year);
    
    return '$day $month $year';
  }
  
  // Log helper for debugging
  static void log(String message, {String? tag}) {
    if (kDebugMode) {
      print('${tag != null ? '[$tag] ' : ''}$message');
    }
  }
  
  // Show snackbar with Bengali text
  static void showSnackbar(String message, {bool isError = false}) {
    // This will be implemented with GetX snackbar
  }
  
  // Validate email
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  
  // Generate greeting based on time
  static String getGreeting() {
    final hour = DateTime.now().hour;
    
    if (hour < 12) {
      return 'শুভ সকাল'; // Good morning
    } else if (hour < 17) {
      return 'শুভ দুপুর'; // Good afternoon
    } else {
      return 'শুভ সন্ধ্যা'; // Good evening
    }
  }
}
