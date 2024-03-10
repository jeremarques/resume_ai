import 'package:flutter/material.dart';
import 'package:resume_ai/models/message_model.dart';

class MessageCard extends StatelessWidget {
  final MessageModel message;
  const MessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      child: Card(
        color: Colors.grey.shade200,
        surfaceTintColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListTile(
          title: Text(
            message.sender,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
              height: 2
            ),  
          ),
          subtitle: Text(
            message.content,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade900,
            ),  
          ),
          minVerticalPadding: 10,
        )
      ),
    );
  }
}