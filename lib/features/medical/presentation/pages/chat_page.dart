import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/chat_controller.dart';
import '../../../../shared/widgets/common_widgets.dart';
import '../../../../shared/themes/app_theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ChatController _chatController = Get.put(ChatController());
  final TextEditingController _messageInputController = TextEditingController();

  void _handleSendMessage() {
    if (_messageInputController.text.isNotEmpty) {
      _chatController.sendMessage(_messageInputController.text);
      _messageInputController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background, // White-gray theme
      appBar: CustomAppBar(
        title: 'AI স্বাস্থ্য সহকারী',
        backgroundColor: AppTheme.primaryGreen, // Or another color from theme
        // Add other CustomAppBar properties if needed
      ),
      body: Obx(() => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: _chatController.messages.length,
                  itemBuilder: (context, index) {
                    final message = _chatController.messages[index];
                    final bool isUserMessage = message.startsWith("User:");
                    // Simple chat bubble alignment
                    return Align(
                      alignment: isUserMessage
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Card(
                        color: isUserMessage
                            ? AppTheme.primaryGreen.withOpacity(0.1)
                            : AppTheme.cardBackground,
                        elevation: 1.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            message,
                            style: TextStyle(
                              color: isUserMessage
                                  ? AppTheme.textPrimary
                                  : AppTheme.textSecondary,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              _buildInputArea(),
            ],
          )),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 4.0),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Language Dropdown - Compact and on the left
          SizedBox(
            width: 120, // Adjust width as needed for compactness
            child: DropdownButtonFormField<String>(
              value: _chatController.selectedLanguage.value,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: AppTheme.divider),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: AppTheme.primaryGreen),
                ),
                isDense: true,
              ),
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'bn', child: Text('Bengali')),
              ],
              onChanged: (String? newValue) {
                if (newValue != null) {
                  _chatController.changeLanguage(newValue);
                }
              },
              dropdownColor: AppTheme.cardBackground,
            ),
          ),
          const SizedBox(width: 8.0),
          // Text Input Field - Expanded in the middle
          Expanded(
            child: TextField(
              controller: _messageInputController,
              decoration: InputDecoration(
                hintText: 'আপনার সমস্যা লিখুন...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor:
                    AppTheme.background, // Light grey for text field background
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
              ),
              onSubmitted: (_) => _handleSendMessage(),
            ),
          ),
          const SizedBox(width: 4.0),
          // Send Button - Sky blue
          ElevatedButton(
            onPressed: _handleSendMessage,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue.shade400, // Sky-blue background
              foregroundColor: Colors.white,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(12), // Adjust padding for size
              minimumSize: const Size(48, 48), // Ensure it's circular
            ),
            child: const Icon(Icons.send),
          ),
          // Voice Input Button
          IconButton(
            icon: Icon(Icons.mic, color: AppTheme.textSecondary),
            onPressed: () {
              // Placeholder for voice input
              Get.snackbar(
                  "Voice Input", "শীগ্রই এই ফিয়েচারটি ইপ্লিমেন্ট করা হবে! ",
                  snackPosition: SnackPosition.BOTTOM);
              debugPrint("Voice input pressed");
            },
          ),
        ],
      ),
    );
  }
}
