// App constants
class AppConstants {
  // App info
  static const String appName = 'স্মার্ট গ্রাম'; // Smart Village in Bengali
  static const String appVersion = '1.0.0';
  
  // API endpoints
  static const String baseUrl = 'https://api.smartvillage.com';
  static const String apiVersion = 'v1';
  
  // Storage keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String languageKey = 'language';
  
  // Default values
  static const String defaultLanguage = 'bn'; // Bengali
  static const int defaultTimeout = 30000; // 30 seconds
  
  // Feature flags
  static const bool enableMedical = true;
  static const bool enableAgriculture = true;
  static const bool enableLawAndLand = true;
  static const bool enableEmergency = true;
}

// App routes
class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String medical = '/medical';
  static const String agriculture = '/agriculture';
  static const String lawAndLand = '/law-and-land';
  static const String emergency = '/emergency';
}

// Bengali text constants
class BengaliStrings {
  // Navigation
  static const String dashboard = 'ড্যাশবোর্ড';
  static const String medical = 'চিকিৎসা';
  static const String agriculture = 'কৃষি';
  static const String lawAndLand = 'আইন ও ভূমি';
  static const String emergency = 'জরুরি';
  
  // Common
  static const String login = 'লগইন';
  static const String logout = 'লগআউট';
  static const String submit = 'জমা দিন';
  static const String cancel = 'বাতিল';
  static const String save = 'সংরক্ষণ';
  static const String search = 'অনুসন্ধান';
  static const String loading = 'লোড হচ্ছে...';
  static const String error = 'ত্রুটি';
  static const String success = 'সফল';
}
