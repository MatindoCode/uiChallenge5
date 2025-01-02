import 'package:flutter/material.dart';

class No extends StatelessWidget {
  const No({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       RichText(
          text: const TextSpan(
            children: [
              TextSpan(text: 'No', style: TextStyle(color: Color.fromARGB(255, 66, 65, 65))),
              TextSpan(
                text: '1',
                style: TextStyle(fontSize: 24.0, color: Color.fromARGB(255, 66, 65, 65)), // Increase font size for '1'
              ),])),
              const SizedBox(height: 10,),
              Text("Sports", style: TextStyle(color: Colors.grey),)
      
      
      
      ],
    );
  }
}