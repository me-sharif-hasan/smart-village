// Law and Land Dummy Data
class LawAndLandDummyData {
  static List<Map<String, dynamic>> getLandRecords() {
    return [
      {
        'id': 1,
        'dagNumber': '১২৩',
        'khatianNumber': '৪৫৬',
        'ownerName': 'মোহাম্মদ আলী',
        'landType': 'কৃষি জমি',
        'area': '২ একর',
        'location': 'পাড়াগাঁও, যশোর',
        'registrationDate': '১৫/০৩/২০২০',
        'status': 'নিবন্ধিত',
      },
      {
        'id': 2,
        'dagNumber': '৭৮৯',
        'khatianNumber': '১০১',
        'ownerName': 'রহিমা খাতুন',
        'landType': 'আবাসিক',
        'area': '৫ শতাংশ',
        'location': 'শহর, ঢাকা',
        'registrationDate': '২০/০৮/২০১৮',
        'status': 'বিরোধপূর্ণ',
      },
    ];
  }

  static List<Map<String, dynamic>> getLegalServices() {
    return [
      {
        'id': 1,
        'serviceName': 'নামজারি আবেদন',
        'description': 'জমির মালিকানা পরিবর্তনের জন্য আবেদন',
        'fee': '৫০০ টাকা',
        'duration': '৩০ দিন',
        'requiredDocs': ['মূল দলিল', 'জাতীয় পরিচয়পত্র', 'ছবি'],
      },
      {
        'id': 2,
        'serviceName': 'দাগ সংশোধন',
        'description': 'জমির দাগ নম্বর সংশোধনের আবেদন',
        'fee': '৩০০ টাকা',
        'duration': '২১ দিন',
        'requiredDocs': ['খতিয়ান কপি', 'জরিপ রিপোর্ট'],
      },
    ];
  }

  static List<Map<String, dynamic>> getLawyerContacts() {
    return [
      {
        'id': 1,
        'name': 'এডভোকেট মাহবুব আলম',
        'specialty': 'ভূমি আইন',
        'experience': '১৫ বছর',
        'chambers': 'জেলা জজ কোর্ট',
        'phone': '০১৭১১-১২৩৪৫৬',
        'fee': '২০০০ টাকা/মামলা',
        'rating': 4.5,
      },
      {
        'id': 2,
        'name': 'এডভোকেট সালমা বেগম',
        'specialty': 'পারিবারিক আইন',
        'experience': '১০ বছর',
        'chambers': 'সিটি কর্পোরেশন',
        'phone': '০১৮১১-৭৮৯০১২',
        'fee': '১৫০০ টাকা/মামলা',
        'rating': 4.2,
      },
    ];
  }

  static List<Map<String, dynamic>> getCourtCases() {
    return [
      {
        'id': 1,
        'caseNumber': 'সিভিল স্যুট নং ১২৩/২০২৪',
        'caseType': 'ভূমি বিরোধ',
        'plaintiff': 'মোহাম্মদ আলী',
        'defendant': 'করিম উদ্দিন',
        'nextHearing': '০৫/০৬/২০২৫',
        'status': 'চলমান',
        'court': 'অতিরিক্ত জেলা জজ কোর্ট',
      },
      {
        'id': 2,
        'caseNumber': 'আপিল নং ৪৫৬/২০২৩',
        'caseType': 'নামজারি আপিল',
        'plaintiff': 'রহিমা খাতুন',
        'defendant': 'ইউনিয়ন ভূমি অফিস',
        'nextHearing': '১২/০৬/২০২৫',
        'status': 'রায়ের অপেক্ষায়',
        'court': 'জেলা জজ কোর্ট',
      },
    ];
  }

  static List<Map<String, dynamic>> getLegalNotices() {
    return [
      {
        'id': 1,
        'title': 'নতুন ভূমি আইন সংশোধনী',
        'description': 'ভূমি নিবন্ধন প্রক্রিয়ায় নতুন নিয়ম কার্যকর হয়েছে',
        'date': '২০/০৫/২০২৫',
        'authority': 'ভূমি মন্ত্রণালয়',
      },
      {
        'id': 2,
        'title': 'ডিজিটাল নামজারি সেবা চালু',
        'description': 'এখন অনলাইনে নামজারি আবেদন করা যাবে',
        'date': '১৫/০৫/২০২৫',
        'authority': 'জেলা প্রশাসক অফিস',
      },
    ];
  }

  static Map<String, dynamic> getEmergencyLegalContacts() {
    return {
      'legal_aid': '১৬৪৩০',
      'land_office': '০২-৯৫৮৭৬৫৪',
      'court_helpline': '০২-৮৮১২৩৪৫',
      'lawyer_association': '০১৭১১-৫৫৫৫৫৫',
    };
  }
}
