import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'core/di/injection_container.dart';
import 'shared/themes/app_theme.dart';
import 'features/dashboard/presentation/pages/dashboard_page.dart';
import 'features/medical/presentation/pages/medical_page.dart';
import 'features/agriculture/presentation/pages/agriculture_page.dart';
import 'features/law_and_land/presentation/pages/law_and_land_page.dart';
import 'features/emergency/presentation/pages/emergency_page.dart';
import 'features/auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize dependency injection
  configureDependencies();
  
  runApp(const SmartVillageApp());
}

class SmartVillageApp extends StatelessWidget {
  const SmartVillageApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'স্মার্ট গ্রাম', // Smart Village
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      locale: const Locale('bn', 'BD'), // Bengali (Bangladesh)
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('bn', 'BD'), // Bengali
        Locale('en', 'US'), // English
      ],
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const DashboardPage(),
        ),
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => const DashboardPage(),
        ),
        GetPage(
          name: '/medical',
          page: () => const MedicalPage(),
        ),
        GetPage(
          name: '/agriculture',
          page: () => const AgriculturePage(),
        ),
        GetPage(
          name: '/law-and-land',
          page: () => const LawAndLandPage(),
        ),        GetPage(
          name: '/emergency',
          page: () => const EmergencyPage(),
        ),
      ],
    );
  }
}
