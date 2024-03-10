import 'package:flutter/material.dart';
import 'package:resume_ai/views/home_view.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        fontFamily: 'Outfit',
      ),
      home: const HomeView(),
    );
  }
}