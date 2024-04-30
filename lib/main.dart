
import 'package:appfood/auth/login_or_register.dart';
import 'package:appfood/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'page/login_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemProvider>(context).themData,
    );
  }
}
