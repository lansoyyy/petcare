import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:petcare/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: const MaterialApp(
        title: 'PetCare',
        home: HomeScreen(),
      ),
    );
  }
}
