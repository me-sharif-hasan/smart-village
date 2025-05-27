import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalController extends GetxController {
  var selectedCategory = 0.obs;
  var isLoading = false.obs;
  var selectedDistrict = 'ঢাকা'.obs;

  // Nearest Hospitals Data
  final List<Map<String, dynamic>> nearestHospitals = [
    {
      'name': 'ঢাকা মেডিকেল কলেজ হাসপাতাল',
      'address': 'বকশীবাজার, ঢাকা',
      'distance': '২.৫ কিমি',
      'phone': '02-55165088',
    },
    {
      'name': 'স্কয়ার হাসপাতাল',
      'address': 'পান্থপথ, ঢাকা',
      'distance': '৩.২ কিমি',
      'phone': '02-8159457',
    },
    {
      'name': 'ইউনাইটেড হাসপাতাল',
      'address': 'গুলশান, ঢাকা',
      'distance': '৪.১ কিমি',
      'phone': '02-9883091',
    },
    {
      'name': 'আপোলো হাসপাতাল',
      'address': 'বসুন্ধরা, ঢাকা',
      'distance': '৫.৮ কিমি',
      'phone': '02-8401661',
    },
  ];

  // District-wise Doctors Data
  final Map<String, List<Map<String, dynamic>>> districtDoctors = {
    'ঢাকা': [
      {
        'name': 'ডা. আব্দুল করিম',
        'speciality': 'জেনারেল মেডিসিন',
        'hospital': 'ঢাকা মেডিকেল কলেজ',
        'phone': '01711234567',
        'chamber': 'শনি-বুধ ৫-৮ টা',
      },
      {
        'name': 'ডা. ফাতেমা খাতুন',
        'speciality': 'শিশু বিশেষজ্ঞ',
        'hospital': 'স্কয়ার হাসপাতাল',
        'phone': '01812345678',
        'chamber': 'রোজ ৪-৭ টা',
      },
    ],
    'চট্টগ্রাম': [
      {
        'name': 'ডা. মোহাম্মদ হাসান',
        'speciality': 'হৃদরোগ বিশেষজ্ঞ',
        'hospital': 'চট্টগ্রাম মেডিকেল কলেজ',
        'phone': '01913456789',
        'chamber': 'সোম-বৃহ ৬-৯ টা',
      },
    ],
    'সিলেট': [
      {
        'name': 'ডা. রহিমা বেগম',
        'speciality': 'গাইনি বিশেষজ্ঞ',
        'hospital': 'সিলেট MAG ওসমানী মেডিকেল কলেজ',
        'phone': '01714567890',
        'chamber': 'মঙ্গল-শুক্র ৫-৮ টা',
      },
    ],
  };

  // Vaccination Reminders Data
  final List<Map<String, dynamic>> vaccinationReminders = [
    {
      'name': 'কোভিড-১৯ বুস্টার',
      'date': '২৫ জানুয়ারি ২০২৪',
      'center': 'উপজেলা স্বাস্থ্য কমপ্লেক্স',
      'type': 'বুস্টার ডোজ',
    },
    {
      'name': 'ইনফ্লুয়েঞ্জা',
      'date': '১৫ ফেব্রুয়ারি ২০২৪',
      'center': 'কমিউনিটি ক্লিনিক',
      'type': 'বার্ষিক ডোজ',
    },
  ];

  // Districts list
  final List<String> districts = [
    'ঢাকা', 'চট্টগ্রাম', 'সিলেট', 'রাজশাহী', 'খুলনা', 'বরিশাল', 'রংপুর', 'ময়মনসিংহ'
  ];

  // AI Health Assistant Methods
  void openAIChat() {
    Get.snackbar(
      'AI হেলথ সহকারী',
      'AI চ্যাট খোলা হচ্ছে... এই ফিচারটি শীঘ্রই চালু হবে',
      backgroundColor: Colors.blue.withOpacity(0.1),
      colorText: Colors.blue,
      icon: const Icon(Icons.chat_bubble_outline, color: Colors.blue),
    );
  }

  void openVoiceInput() {
    Get.snackbar(
      'ভয়েস ইনপুট',
      'ভয়েস রেকগনিশন চালু করা হচ্ছে...',
      backgroundColor: Colors.purple.withOpacity(0.1),
      colorText: Colors.purple,
      icon: const Icon(Icons.mic, color: Colors.purple),
    );
  }

  // Hospital Methods
  void callHospital(String phoneNumber) {
    Get.snackbar(
      'হাসপাতালে কল',
      'কল করা হচ্ছে $phoneNumber নম্বরে...',
      backgroundColor: Colors.green.withOpacity(0.1),
      colorText: Colors.green,
      icon: const Icon(Icons.phone, color: Colors.green),
    );
  }

  // Emergency Contact Methods
  void callEmergency(String emergencyNumber) {
    Get.snackbar(
      'জরুরি কল',
      'জরুরি সেবায় কল করা হচ্ছে $emergencyNumber...',
      backgroundColor: Colors.red.withOpacity(0.1),
      colorText: Colors.red,
      icon: const Icon(Icons.emergency, color: Colors.red),
    );
  }

  // District Doctors Methods
  void selectDistrict(String district) {
    selectedDistrict.value = district;
  }

  void searchDoctors() {
    Get.snackbar(
      'ডাক্তার খোঁজা হচ্ছে',
      '${selectedDistrict.value} জেলার ডাক্তারদের তালিকা দেখানো হচ্ছে...',
      backgroundColor: Colors.orange.withOpacity(0.1),
      colorText: Colors.orange,
      icon: const Icon(Icons.search, color: Colors.orange),
    );
  }

  void callDoctor(String phoneNumber) {
    Get.snackbar(
      'ডাক্তার কল',
      'ডাক্তারের সাথে যোগাযোগ করা হচ্ছে $phoneNumber...',
      backgroundColor: Colors.blue.withOpacity(0.1),
      colorText: Colors.blue,
      icon: const Icon(Icons.phone, color: Colors.blue),    );
  }

  // Vaccination Methods
  void viewVaccinationDetails(Map<String, dynamic> vaccination) {
    Get.snackbar(
      vaccination['name'],
      'তারিখ: ${vaccination['date']}\nস্থান: ${vaccination['center']}\nধরন: ${vaccination['type']}',
      backgroundColor: Colors.green.withOpacity(0.1),
      colorText: Colors.green,
      icon: const Icon(Icons.vaccines, color: Colors.green),
      duration: const Duration(seconds: 4),
    );
  }

  void setVaccinationReminder(Map<String, dynamic> vaccination) {
    Get.snackbar(
      'রিমাইন্ডার সেট',
      '${vaccination['name']} এর জন্য রিমাইন্ডার সেট করা হয়েছে',
      backgroundColor: Colors.orange.withOpacity(0.1),
      colorText: Colors.orange,
      icon: const Icon(Icons.notifications, color: Colors.orange),
    );
  }

  void openCalendar() {
    Get.snackbar(
      'ক্যালেন্ডার',
      'ভ্যাকসিনেশন ক্যালেন্ডার খোলা হচ্ছে...',
      backgroundColor: Colors.indigo.withOpacity(0.1),
      colorText: Colors.indigo,
      icon: const Icon(Icons.calendar_today, color: Colors.indigo),
    );
  }

  // Skin Disease Detection Methods
  void openCamera() {
    Get.snackbar(
      'ক্যামেরা',
      'স্কিন ডিটেকশনের জন্য ক্যামেরা খোলা হচ্ছে...',
      backgroundColor: Colors.teal.withOpacity(0.1),
      colorText: Colors.teal,
      icon: const Icon(Icons.camera_alt, color: Colors.teal),
    );
  }

  void uploadFromGallery() {
    Get.snackbar(
      'গ্যালারি',
      'ছবি আপলোড করা হচ্ছে...',
      backgroundColor: Colors.purple.withOpacity(0.1),
      colorText: Colors.purple,
      icon: const Icon(Icons.photo_library, color: Colors.purple),
    );
  }

  void emergencyCall() {
    Get.snackbar(
      'জরুরি চিকিৎসা সেবা',
      'জরুরি চিকিৎসার জন্য কল করুন: ৯৯৯',
      backgroundColor: Colors.red.withOpacity(0.1),
      colorText: Colors.red,
      icon: const Icon(Icons.emergency, color: Colors.red),
    );
  }
}
