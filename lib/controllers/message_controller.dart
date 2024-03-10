import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:resume_ai/models/message_model.dart';

class MessageController extends ChangeNotifier {
  final String apiKey = const String.fromEnvironment('API_KEY');
  TextEditingController contentUrl = TextEditingController();
  final List<MessageModel> messages = [];

  MessageController({required this.contentUrl});
  
  void sendMessage() async {
    if (apiKey.isEmpty) {
      debugPrint('No API_KEY found, please set the environment variable.');
    }
    messages.add(MessageModel(sender: 'jeremias.marques', content: contentUrl.text));
    notifyListeners();
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final content = [Content.text('Summarize the content on ${contentUrl.text}.')];
    contentUrl.clear();
    final response = await model.generateContent(content);

    messages.add(MessageModel(sender: 'ResumeAi', content: response.text ?? ""));
    notifyListeners();
    debugPrint(response.text);
  }
}