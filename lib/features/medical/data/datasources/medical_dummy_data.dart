// Medical Dummy Data
class MedicalDummyData {
  static List<Map<String, dynamic>> getDoctors() {
    return [
      {
        'id': 1,
        'name': 'ডা. করিম উদ্দিন',
        'specialty': 'সাধারণ চিকিৎসক',
        'hospital': 'উপজেলা স্বাস্থ্য কমপ্লেক্স',
        'available': true,
        'rating': 4.5,
        'experience': '১০ বছর',
        'fee': '৫০০ টাকা',
      },
      {
        'id': 2,
        'name': 'ডা. ফাতেমা খাতুন',
        'specialty': 'গাইনি বিশেষজ্ঞ',
        'hospital': 'জেলা হাসপাতাল',
        'available': true,
        'rating': 4.8,
        'experience': '১৫ বছর',
        'fee': '৮০০ টাকা',
      },
      {
        'id': 3,
        'name': 'ডা. আবুল হাসান',
        'specialty': 'শিশু বিশেষজ্ঞ',
        'hospital': 'কমিউনিটি ক্লিনিক',
        'available': false,
        'rating': 4.3,
        'experience': '৮ বছর',
        'fee': '৬০০ টাকা',
      },
    ];
  }

  static List<Map<String, dynamic>> getAppointments() {
    return [
      {
        'id': 1,
        'doctorName': 'ডা. করিম উদ্দিন',
        'date': '২০২৫-০৫-২৮',
        'time': '১০:০০ এএম',
        'status': 'নিশ্চিত',
        'type': 'সাধারণ পরীক্ষা',
      },
      {
        'id': 2,
        'doctorName': 'ডা. ফাতেমা খাতুন',
        'date': '২০২৫-০৫-৩০',
        'time': '২:০০ পিএম',
        'status': 'অপেক্ষমান',
        'type': 'নিয়মিত চেকআপ',
      },
    ];
  }

  static List<Map<String, dynamic>> getMedications() {
    return [
      {
        'id': 1,
        'name': 'প্যারাসিটামল',
        'dosage': '৫০০ এমজি',
        'frequency': 'দিনে ৩ বার',
        'duration': '৫ দিন',
        'price': '১০ টাকা',
        'generic': 'প্যারাসিটামল',
      },
      {
        'id': 2,
        'name': 'অ্যামোক্সিসিলিন',
        'dosage': '২৫০ এমজি',
        'frequency': 'দিনে ২ বার',
        'duration': '৭ দিন',
        'price': '৫০ টাকা',
        'generic': 'অ্যামোক্সিসিলিন',
      },
    ];
  }

  static List<Map<String, dynamic>> getHealthTips() {
    return [
      {
        'id': 1,
        'title': 'সুস্থ থাকার উপায়',
        'description': 'নিয়মিত ব্যায়াম করুন, সুষম খাবার খান এবং পর্যাপ্ত পানি পান করুন',
        'category': 'সাধারণ',
        'image': 'health_tips_1.jpg',
      },
      {
        'id': 2,
        'title': 'করোনা প্রতিরোধ',
        'description': 'মাস্ক পরুন, হাত ধুয়ে রাখুন এবং সামাজিক দূরত্ব বজায় রাখুন',
        'category': 'প্রতিরোধ',
        'image': 'covid_prevention.jpg',
      },
    ];
  }

  static Map<String, dynamic> getEmergencyContacts() {
    return {
      'ambulance': '৯৯৯',
      'hospital': '১৬২৬৩',
      'poison_control': '১৬২৬৩',
      'emergency_doctor': '০১৭১১-১২৩৪৫৬',
    };
  }
}
