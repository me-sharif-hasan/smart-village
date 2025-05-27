import 'package:get/get.dart';

class AgricultureController extends GetxController {
  var selectedCategory = 0.obs;
  var isLoading = false.obs;

  final List<Map<String, dynamic>> categories = [
    {
      'name': 'ফসল উৎপাদন',
      'icon': '🌾',
      'color': 0xFF4CAF50,
      'items': [
        'ধান চাষ',
        'গম চাষ',
        'ভুট্টা চাষ',
        'আলু চাষ',
        'সবজি চাষ',
      ]
    },
    {
      'name': 'কৃষি পরামর্শ',
      'icon': '👨‍🌾',
      'color': 0xFF2196F3,
      'items': [
        'মাটি পরীক্ষা',
        'সার প্রয়োগ',
        'কীটনাশক ব্যবহার',
        'রোগ প্রতিরোধ',
        'ফসল সংরক্ষণ',
      ]
    },
    {
      'name': 'আবহাওয়া',
      'icon': '🌤️',
      'color': 0xFFFF9800,
      'items': [
        'আজকের আবহাওয়া',
        'সাপ্তাহিক পূর্বাভাস',
        'বৃষ্টিপাতের সম্ভাবনা',
        'তাপমাত্রা',
        'বাতাসের গতি',
      ]
    },
    {
      'name': 'বাজার দর',
      'icon': '💰',
      'color': 0xFF9C27B0,
      'items': [
        'ধানের দাম',
        'গমের দাম',
        'সবজির দাম',
        'ফলের দাম',
        'মসলার দাম',
      ]
    },
    {
      'name': 'কৃষি ঋণ',
      'icon': '🏦',
      'color': 0xFFF44336,
      'items': [
        'কৃষি ব্যাংক ঋণ',
        'এনজিও ঋণ',
        'সরকারি ভর্তুকি',
        'বীজ ঋণ',
        'যন্ত্রপাতি ঋণ',
      ]
    },
    {
      'name': 'প্রশিক্ষণ',
      'icon': '📚',
      'color': 0xFF607D8B,
      'items': [
        'আধুনিক চাষাবাদ',
        'জৈব কৃষি',
        'প্রযুক্তি ব্যবহার',
        'মৎস্য চাষ',
        'পশুপালন',
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

  void callExpert() {
    Get.snackbar(
      'কৃষি বিশেষজ্ঞ',
      'বিশেষজ্ঞের সাথে যোগাযোগ করা হচ্ছে...',
      backgroundColor: Get.theme.primaryColor.withOpacity(0.1),
      colorText: Get.theme.primaryColor,    );
  }
}
