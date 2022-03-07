import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbox_notification/ui/inbox_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: InboxScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
