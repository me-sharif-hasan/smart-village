// Emergency Dummy Data
class EmergencyDummyData {
  static List<Map<String, dynamic>> getEmergencyServices() {
    return [
      {
        'id': 1,
        'name': 'পুলিশ',
        'phone': '৯৯৯',
        'description': 'জরুরি পুলিশি সহায়তার জন্য',
        'responseTime': '৫-১০ মিনিট',
        'available24x7': true,
        'location': 'সব থানায় উপলব্ধ',
      },
      {
        'id': 2,
        'name': 'অগ্নিনির্বাপণ',
        'phone': '৯৯৯',
        'description': 'আগুন ও উদ্ধার সেবার জন্য',
        'responseTime': '১০-১৫ মিনিট',
        'available24x7': true,
        'location': 'ফায়ার স্টেশন',
      },
      {
        'id': 3,
        'name': 'অ্যাম্বুলেন্স',
        'phone': '৯৯৯',
        'description': 'জরুরি চিকিৎসা সেবার জন্য',
        'responseTime': '১৫-২০ মিনিট',
        'available24x7': true,
        'location': 'সব হাসপাতালে',
      },
    ];
  }

  static List<Map<String, dynamic>> getHospitals() {
    return [
      {
        'id': 1,
        'name': 'উপজেলা স্বাস্থ্য কমপ্লেক্স',
        'address': 'পাড়াগাঁও, যশোর',        'phone': '০৪২১-৬৮৭৯০',
        'emergencyPhone': '০৪২১-৬৮৭৯১',
        'ambulanceAvailable': true,
        'beds': 50,
        'services': ['জরুরি সেবা', 'সাধারণ চিকিৎসা', 'প্রসূতি সেবা'],
        'distance': '২ কিমি',
      },
      {
        'id': 2,
        'name': 'জেলা হাসপাতাল',
        'address': 'যশোর সদর',        'phone': '০৪২১-৬২৩৪৫',
        'emergencyPhone': '০৪২১-৬২৩৪৬',
        'ambulanceAvailable': true,
        'beds': 200,
        'services': ['সব ধরনের চিকিৎসা', 'অপারেশন', 'আইসিইউ'],
        'distance': '১৫ কিমি',
      },
    ];
  }

  static List<Map<String, dynamic>> getPoliceStations() {
    return [
      {
        'id': 1,
        'name': 'পাড়াগাঁও থানা',
        'address': 'পাড়াগাঁও বাজার',
        'phone': '০৪২১-৫৫৫৫৫',
        'emergencyPhone': '৯৯৯',
        'officerInCharge': 'মোঃ রফিকুল ইসলাম',
        'services': ['সাধারণ ডায়েরি', 'এফআইআর', 'পাসপোর্ট ভেরিফিকেশন'],
        'distance': '১ কিমি',
      },
      {
        'id': 2,
        'name': 'যশোর সদর থানা',
        'address': 'কোর্ট রোড, যশোর',
        'phone': '০৪২১-৬৮৯০০',
        'emergencyPhone': '৯৯৯',
        'officerInCharge': 'মোঃ আব্দুর রহমান',
        'services': ['সকল পুলিশি সেবা', 'সাইবার ক্রাইম', 'ট্রাফিক পুলিশ'],
        'distance': '১৫ কিমি',
      },
    ];
  }

  static List<Map<String, dynamic>> getDisasterAlerts() {
    return [
      {
        'id': 1,
        'type': 'বন্যা সতর্কতা',
        'severity': 'মাঝারি',
        'area': 'যশোর জেলা',
        'message': 'আগামী ২৪ ঘণ্টায় ভারী বৃষ্টির সম্ভাবনা। নিচু এলাকার মানুষ সতর্ক থাকুন।',
        'issuedAt': '২৭/০৫/২০২৫ ১০:০০ এএম',
        'validUntil': '২৮/০৫/২০২৫ ১০:০০ এএম',
      },
      {
        'id': 2,
        'type': 'ঝড় সতর্কতা',
        'severity': 'হালকা',
        'area': 'উপকূলীয় এলাকা',
        'message': 'গতিবেগ ৪০ কিমি/ঘণ্টা বাতাস এবং বৃষ্টির সম্ভাবনা।',
        'issuedAt': '২৬/০৫/২০২৫ ৮:০০ পিএম',
        'validUntil': '২৭/০৫/২০২৫ ৮:০০ পিএম',
      },
    ];
  }

  static List<Map<String, dynamic>> getEmergencyContacts() {
    return [
      {
        'name': 'পুলিশ',
        'number': '৯৯৯',
        'description': 'সকল জরুরি সেবা',
      },
      {
        'name': 'ফায়ার সার্ভিস',
        'number': '৯৯৮',
        'description': 'আগুন ও উদ্ধার',
      },
      {
        'name': 'দুর্যোগ ব্যবস্থাপনা',
        'number': '১০৯০',
        'description': 'প্রাকৃতিক দুর্যোগ',
      },
      {
        'name': 'নারী ও শিশু সহায়তা',
        'number': '১০৯',
        'description': 'নারী ও শিশু নির্যাতন',
      },
    ];
  }

  static Map<String, dynamic> getNearestServices(double lat, double lng) {
    return {
      'hospital': {
        'name': 'উপজেলা স্বাস্থ্য কমপ্লেক্স',
        'distance': '২.৫ কিমি',
        'eta': '৮ মিনিট',
      },
      'police': {
        'name': 'পাড়াগাঁও থানা',
        'distance': '১.২ কিমি',
        'eta': '৫ মিনিট',
      },
      'fire': {
        'name': 'যশোর ফায়ার স্টেশন',
        'distance': '১৫ কিমি',
        'eta': '২০ মিনিট',
      },
    };
  }
}
