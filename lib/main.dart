import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/onboard/OnboardWidgets.dart';
import 'package:restaurant_booking_app/registration_&_login/Registration&Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Booking App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardPages(),
    );
  }
}