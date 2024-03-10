import 'package:flutter/material.dart';
import 'package:resume_ai/controllers/message_controller.dart';

class UrlInput extends StatelessWidget {
  final MessageController messageController;
  const UrlInput({super.key, required this.messageController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: messageController.contentUrl,
      cursorColor: Colors.black87,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffe6e6e6)),
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Insira o link do conteúdo',
        hintStyle: const TextStyle(
          color: Color.fromARGB(96, 153, 146, 146),
          fontWeight: FontWeight.normal,
          fontSize: 15,
        ),
        suffixIcon: IconButton(                          
          onPressed: messageController.contentUrl.text.isNotEmpty 
          ? () {
            messageController.sendMessage();
          }
          : () => {},
          icon: const Icon(
            Icons.send_rounded,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}