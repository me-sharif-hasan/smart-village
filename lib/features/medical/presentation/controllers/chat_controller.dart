import 'package:get/get.dart';

class ChatController extends GetxController {
  // Reactive list for chat messages, initialized with a welcome message
  final RxList<String> messages = <String>[
    "Bot: আসসালামু আলাইকুম! আমি আপনার AI স্বাস্থ্য সহকারী। আপনার কী সমস্যা?"
  ].obs;

  // Reactive variable for selected language, initialized to Bengali ('bn')
  final RxString selectedLanguage = 'bn'.obs;

  // Method to send a message
  void sendMessage(String messageText) {
    if (messageText.isEmpty) {
      return;
    }

    messages.add("User: $messageText"); // Add user message to the list

    // Prepare request body
    final requestBody = {
      'selected_language': selectedLanguage.value,
      'sender_message': messageText,
    };

    // Simulate API Call
    Future.delayed(const Duration(seconds: 1), () {
      try {
        // Simulate receiving a response
        // More dynamic mock reply
        String replyContent;
        if (requestBody['selected_language'] == 'bn') {
          if (messageText.toLowerCase().contains('কেমন আছেন')) {
            replyContent = "আমি ভালো আছি, ধন্যবাদ। আপনার প্রশ্ন বলুন।";
          } else if (messageText.toLowerCase().contains('সাহায্য')) {
            replyContent = "অবশ্যই! আপনার কী ধরনের সাহায্য প্রয়োজন?";
          } else {
            replyContent =
                "আপনার বার্তা পেয়েছি: '$messageText'। আমি শীঘ্রই উত্তর দেব।";
          }
        } else {
          // English
          if (messageText.toLowerCase().contains('how are you')) {
            replyContent = "I'm doing well, thank you! How can I help you?";
          } else if (messageText.toLowerCase().contains('help')) {
            replyContent = "Sure! What kind of help do you need?";
          } else {
            replyContent =
                "Received your message: '$messageText'. I will reply shortly.";
          }
        }

        final mockResponse = {
          'agent_reply': replyContent,
        };

        final agentReply = mockResponse['agent_reply'];

        if (agentReply != null && agentReply.isNotEmpty) {
          messages.add('Bot: $agentReply');
        } else {
          messages.add(
              'Bot: দুঃখিত, একটি সমস্যা হয়েছে।'); // Sorry, something went wrong. (bn)
        }
      } catch (e) {
        // Log error: print("Error during simulated API call: $e");
        messages.add(
            'Bot: দুঃখিত, একটি সমস্যা হয়েছে।'); // Sorry, something went wrong. (bn)
      }
    });
  }

  // Method to change the language
  void changeLanguage(String languageCode) {
    if (languageCode == 'en' || languageCode == 'bn') {
      selectedLanguage.value = languageCode;
      // Optionally, you could add a message to the chat indicating language change
      // messages.add("System: Language changed to ${languageCode == 'en' ? 'English' : 'Bengali'}");
    } else {
      // Handle unsupported language codes if necessary
      Get.snackbar(
        "Unsupported Language",
        "The selected language '$languageCode' is not supported.",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
