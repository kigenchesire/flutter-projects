import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/colors.dart';
import 'package:whatsappclone/responsive/responsivelayout.dart';
import 'package:whatsappclone/screens/mobile_screen.dart';
import 'package:whatsappclone/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Whatsapp UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout()));
  }
}
