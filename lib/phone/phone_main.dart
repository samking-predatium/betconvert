import 'package:flutter/material.dart';

class PhoneMain extends StatefulWidget {
  const PhoneMain({super.key});

  @override
  State<PhoneMain> createState() => _PhoneMainState();
}

class _PhoneMainState extends State<PhoneMain> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("BetConvert", 
      style: TextStyle( fontFamily: "ColorTube"),
      ),
    );
  }
}