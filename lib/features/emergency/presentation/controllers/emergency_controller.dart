import 'package:get/get.dart';
import 'package:flutter/material.dart';

class EmergencyController extends GetxController {
  var selectedEmergency = (-1).obs;
  var isLoading = false.obs;

  final List<Map<String, dynamic>> emergencyServices = [
    {
      'name': 'পুলিশ',
      'icon': '🚔',
      'color': 0xFF2196F3,
      'phone': '৯৯৯',
      'description': 'জরুরি পুলিশি সহায়তার জন্য',
      'subServices': [
        'অপরাধ রিপোর্ট',
        'হারানো সম্পত্তি',
        'ট্রাফিক সমস্যা',
        'নিরাপত্তা সহায়তা',
      ]
    },
    {
      'name': 'অগ্নিনির্বাপণ',
      'icon': '🚒',
      'color': 0xFFF44336,
      'phone': '৯৯৯',
      'description': 'আগুন ও উদ্ধার সেবার জন্য',
      'subServices': [
        'আগুন নিয়ন্ত্রণ',
        'উদ্ধার অভিযান',
        'বিপজ্জনক বস্তু অপসারণ',
        'জরুরি সাহায্য',
      ]
    },
    {
      'name': 'অ্যাম্বুলেন্স',
      'icon': '🚑',
      'color': 0xFF4CAF50,
      'phone': '৯৯৯',
      'description': 'জরুরি চিকিৎসা সেবার জন্য',
      'subServices': [
        'জরুরি রোগী পরিবহন',
        'হাসপাতালে ভর্তি',
        'প্রাথমিক চিকিৎসা',
        'চিকিৎসা পরামর্শ',
      ]
    },
    {
      'name': 'দুর্যোগ ব্যবস্থাপনা',
      'icon': '🌪️',
      'color': 0xFFFF9800,
      'phone': '১০৯০',
      'description': 'প্রাকৃতিক দুর্যোগের জন্য',
      'subServices': [
        'বন্যা সহায়তা',
        'ঝড় সতর্কতা',
        'আশ্রয়কেন্দ্র',
        'ত্রাণ বিতরণ',
      ]
    },
    {
      'name': 'নারী ও শিশু সহায়তা',
      'icon': '👩‍👧‍👦',
      'color': 0xFF9C27B0,
      'phone': '১০৯',
      'description': 'নারী ও শিশু সুরক্ষার জন্য',
      'subServices': [
        'নারী নির্যাতন প্রতিরোধ',
        'শিশু সুরক্ষা',
        'পারিবারিক সহিংসতা',
        'আইনি সহায়তা',
      ]
    },
    {
      'name': 'স্বাস্থ্য হটলাইন',
      'icon': '🏥',
      'color': 0xFF00BCD4,
      'phone': '১৬২৬৩',
      'description': 'স্বাস্থ্য সংক্রান্ত পরামর্শের জন্য',
      'subServices': [
        'করোনা তথ্য',
        'ডাক্তারি পরামর্শ',
        'ওষুধের তথ্য',
        'হাসপাতালের ঠিকানা',
      ]
    },
  ];

  final List<Map<String, dynamic>> quickActions = [
    {
      'name': 'জরুরি কল',
      'icon': Icons.phone,
      'color': 0xFFE53935,
      'action': 'call_999'
    },
    {
      'name': 'এসএমএস পাঠান',
      'icon': Icons.message,
      'color': 0xFF1E88E5,
      'action': 'send_sms'
    },
    {
      'name': 'লোকেশন শেয়ার',
      'icon': Icons.location_on,
      'color': 0xFF43A047,
      'action': 'share_location'
    },
    {
      'name': 'জরুরি যোগাযোগ',
      'icon': Icons.contacts,
      'color': 0xFFFB8C00,
      'action': 'emergency_contacts'
    },
  ];

  void selectEmergency(int index) {
    selectedEmergency.value = index;
  }

  void callEmergency(String phone) {
    Get.snackbar(
      'জরুরি কল',
      '$phone নম্বরে কল করা হচ্ছে...',
      backgroundColor: Colors.red.withOpacity(0.1),
      colorText: Colors.red,
      duration: const Duration(seconds: 3),
    );
  }

  void performQuickAction(String action) {
    switch (action) {
      case 'call_999':
        callEmergency('৯৯৯');
        break;
      case 'send_sms':
        Get.snackbar(
          'এসএমএস',
          'জরুরি এসএমএস পাঠানো হচ্ছে...',
          backgroundColor: Colors.blue.withOpacity(0.1),
          colorText: Colors.blue,
        );
        break;
      case 'share_location':
        Get.snackbar(
          'লোকেশন',
          'আপনার অবস্থান শেয়ার করা হচ্ছে...',
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green,
        );
        break;
      case 'emergency_contacts':
        Get.snackbar(
          'জরুরি যোগাযোগ',
          'জরুরি যোগাযোগের তালিকা খোলা হচ্ছে...',
          backgroundColor: Colors.orange.withOpacity(0.1),        colorText: Colors.orange,
        );
        break;
    }
  }
}
