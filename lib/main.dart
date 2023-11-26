import 'package:flutter/material.dart';
import 'package:iqro/config/config.dart';
import 'package:iqro/features/profile/presentation/pages/dua/dua_page.dart';
import 'package:iqro/features/profile/presentation/pages/pages.dart';
import 'package:iqro/service_locator.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
