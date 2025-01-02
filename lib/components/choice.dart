import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/Icon.png", width: 60, 
  height: 20, fit: BoxFit.cover),
  SizedBox(height: 10),
        const Text("LifeStyle", style: TextStyle(color: Colors.grey))
      ],
    );
  }
}