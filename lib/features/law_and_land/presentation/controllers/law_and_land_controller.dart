import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LawAndLandController extends GetxController {
  var selectedCategory = 0.obs;
  var isLoading = false.obs;

  final List<Map<String, dynamic>> categories = [
    {
      'name': 'ভূমি রেকর্ড',
      'icon': '📋',
      'color': 0xFF2196F3,
      'items': [
        'খতিয়ান দেখুন',
        'জমির দাগ নম্বর',
        'মালিকানা তথ্য',
        'জমির পরিমাণ',
        'জমির শ্রেণী',
      ]
    },
    {
      'name': 'জমি মাপ জোখ',
      'icon': '📏',
      'color': 0xFF4CAF50,
      'items': [
        'জমি জরিপ',
        'সীমানা নির্ধারণ',
        'এ আর এস দেখুন',
        'জমির মাপ',
        'সীমানা বিরোধ',
      ]
    },
    {
      'name': 'রেজিস্ট্রেশন',
      'icon': '📜',
      'color': 0xFFFF9800,
      'items': [
        'দলিল রেজিস্ট্রেশন',
        'বায়া দলিল',
        'হেবা দলিল',
        'দান দলিল',
        'ওয়ারিশ সূত্র',
      ]
    },
    {
      'name': 'আইনি সহায়তা',
      'icon': '⚖️',
      'color': 0xFF9C27B0,
      'items': [
        'আইনজীবী পরামর্শ',
        'আদালতের তারিখ',
        'মামলার অবস্থা',
        'আইনি নোটিশ',
        'সাক্ষী সংগ্রহ',
      ]
    },
    {
      'name': 'ভূমি উন্নয়ন',
      'icon': '🏗️',
      'color': 0xFFF44336,
      'items': [
        'খাস জমি বরাদ্দ',
        'ভূমি উন্নয়ন কর',
        'কৃষি খাত উন্নয়ন',
        'ভূমি সংস্কার',
        'পুনর্বাসন',
      ]
    },
    {
      'name': 'সেবার আবেদন',
      'icon': '📝',
      'color': 0xFF607D8B,
      'items': [
        'অনলাইন আবেদন',
        'নামজারি আবেদন',
        'দাগ সংশোধন',
        'পর্চা সংশোধন',
        'উত্তরাধিকার',
      ]
    },
  ];

  void selectCategory(int index) {
    selectedCategory.value = index;
  }

  void onItemTap(String itemName) {
    Get.snackbar(
      'তথ্য',
      '$itemName সম্পর্কে বিস্তারিত তথ্য শীঘ্রই আসছে',
      backgroundColor: Get.theme.primaryColor.withOpacity(0.1),
      colorText: Get.theme.primaryColor,
    );
  }

  void callLawyer() {
    Get.snackbar(
      'আইনি সহায়তা',
      'আইনজীবীর সাথে যোগাযোগ করা হচ্ছে...',
      backgroundColor: Get.theme.primaryColor.withOpacity(0.1),
      colorText: Get.theme.primaryColor,
    );
  }

  void emergencyLegal() {
    Get.snackbar(
      'জরুরি আইনি সহায়তা',
      'জরুরি আইনি সহায়তার জন্য কল করুন: ৯৯৯',
      backgroundColor: Colors.red.withOpacity(0.1),
      colorText: Colors.red,    );
  }
}
