import 'package:get/get.dart';

class DashboardController extends GetxController {
  // Current selected index for bottom navigation
  final RxInt currentIndex = 0.obs;

  // Feature cards data
  final RxList<FeatureCard> featureCards = <FeatureCard>[
    FeatureCard(
      title: 'স্বাস্থ্য সেবা', // Medical
      subtitle: 'স্বাস্থ্য সেবা ও পরামর্শ',
      icon: 'medical',
      route: '/medical',
      color: '0xFF3182CE',
    ),
    FeatureCard(
      title: 'কৃষি', // Agriculture
      subtitle: 'কৃষি তথ্য ও পরামর্শ',
      icon: 'agriculture',
      route: '/agriculture',
      color: '0xFF38A169',
    ),
    FeatureCard(
      title: 'আইন ও ভূমি', // Law and Land
      subtitle: 'আইনি সহায়তা ও ভূমি সেবা',
      icon: 'law',
      route: '/law-and-land',
      color: '0xFFD69E2E',
    ),
    FeatureCard(
      title: 'জরুরি', // Emergency
      subtitle: 'জরুরি সেবা ও যোগাযোগ',
      icon: 'emergency',
      route: '/emergency',
      color: '0xFFE53E3E',
    ),
  ].obs;

  // User info
  final RxString userName = 'গ্রাম ব্যবহারকারী'.obs; // Village User
  final RxString userLocation = 'ঢাকা, বাংলাদেশ'.obs; // Dhaka, Bangladesh

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  void navigateToFeature(String route) {
    Get.toNamed(route);
  }

  @override
  void onInit() {
    super.onInit();
    // Initialize dashboard data
    loadUserData();
  }

  void loadUserData() {
    // Load user data from storage or API
    // This will be implemented later
  }
}

class FeatureCard {
  final String title;
  final String subtitle;
  final String icon;
  final String route;
  final String color;

  FeatureCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
    required this.color,
  });
}
