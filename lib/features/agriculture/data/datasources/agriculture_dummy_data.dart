// Agriculture Dummy Data
class AgricultureDummyData {
  static List<Map<String, dynamic>> getCrops() {
    return [
      {
        'id': 1,
        'name': 'ধান',
        'season': 'আমন',
        'plantingTime': 'জুন-জুলাই',
        'harvestTime': 'নভেম্বর-ডিসেম্বর',
        'yield': '৪-৫ টন/একর',
        'marketPrice': '৩০ টাকা/কেজি',
        'tips': 'নিয়মিত সেচ দিন এবং কীটনাশক ব্যবহার করুন',
      },
      {
        'id': 2,
        'name': 'আলু',
        'season': 'রবি',
        'plantingTime': 'অক্টোবর-নভেম্বর',
        'harvestTime': 'ফেব্রুয়ারি-মার্চ',
        'yield': '৮-১০ টন/একর',
        'marketPrice': '২৫ টাকা/কেজি',
        'tips': 'মাটি ভালো করে চাষ করুন এবং সার প্রয়োগ করুন',
      },
      {
        'id': 3,
        'name': 'ভুট্টা',
        'season': 'খরিফ',
        'plantingTime': 'মার্চ-এপ্রিল',
        'harvestTime': 'জুন-জুলাই',
        'yield': '৬-৮ টন/একর',
        'marketPrice': '২২ টাকা/কেজি',
        'tips': 'সময়মতো বীজ বপন করুন এবং আগাছা পরিষ্কার করুন',
      },
    ];
  }

  static List<Map<String, dynamic>> getWeatherInfo() {
    return [
      {
        'date': '২০২৫-০৫-২৭',
        'temperature': '৩২°সে',
        'humidity': '৭৫%',
        'rainfall': '১০ মিমি',
        'windSpeed': '১৫ কিমি/ঘণ্টা',
        'condition': 'আংশিক মেঘলা',
        'advice': 'আজ সেচ দেওয়ার ভালো সময়',
      },
      {
        'date': '২০২৫-০৫-২৮',
        'temperature': '৩০°সে',
        'humidity': '৮০%',
        'rainfall': '৫ মিমি',
        'windSpeed': '১২ কিমি/ঘণ্টা',
        'condition': 'হালকা বৃষ্টি',
        'advice': 'বৃষ্টির কারণে মাঠে কাজ বন্ধ রাখুন',
      },
    ];
  }

  static List<Map<String, dynamic>> getMarketPrices() {
    return [
      {
        'item': 'ধান',
        'price': '৩০ টাকা/কেজি',
        'change': '+২ টাকা',
        'trend': 'বৃদ্ধি',
        'market': 'স্থানীয় বাজার',
      },
      {
        'item': 'গম',
        'price': '৩৫ টাকা/কেজি',
        'change': '-১ টাকা',
        'trend': 'হ্রাস',
        'market': 'পাইকারি বাজার',
      },
      {
        'item': 'আলু',
        'price': '২৫ টাকা/কেজি',
        'change': '+৩ টাকা',
        'trend': 'বৃদ্ধি',
        'market': 'খুচরা বাজার',
      },
    ];
  }

  static List<Map<String, dynamic>> getAgriculturalAdvice() {
    return [
      {
        'id': 1,
        'title': 'মাটি পরীক্ষার গুরুত্ব',
        'description': 'ফসল রোপণের আগে মাটি পরীক্ষা করে সঠিক সার প্রয়োগ করুন',
        'category': 'মাটি ব্যবস্থাপনা',
      },
      {
        'id': 2,
        'title': 'জৈব সার ব্যবহার',
        'description': 'রাসায়নিক সারের পাশাপাশি জৈব সার ব্যবহার করুন',
        'category': 'সার ব্যবস্থাপনা',
      },
    ];
  }

  static Map<String, dynamic> getExpertContacts() {
    return {
      'agriculture_officer': '০১৭১১-৫৪৩২১০',
      'veterinary_doctor': '০১৮১১-৯৮৭৆৫৪',
      'soil_expert': '০১৯১১-১১২২৩৩',
      'helpline': '১৬১২৩',
    };
  }
}
