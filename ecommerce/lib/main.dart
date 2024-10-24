import 'package:flutter/material.dart';
import 'package:ecommerce/user/pages/user_add_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 222, 96, 58)),
        useMaterial3: true,
      ),
      home: const UserAddPage(),
    );
  }
}