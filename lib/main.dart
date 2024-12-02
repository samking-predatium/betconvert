import 'package:betconvert/constant/responsive.dart';
import 'package:betconvert/desktop/desk_main.dart';
import 'package:betconvert/phone/phone_main.dart';
import 'package:betconvert/tablet/tablet_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BetConvert',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  Responsive(
        onPhone: PhoneMain(), 
        onTablet: TabletMain(), 
        onDesktop: DeskMain(),
      ) ,
    );
  }
}
