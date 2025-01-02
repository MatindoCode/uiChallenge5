import 'package:flutter/material.dart';

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Text("9+", style: TextStyle(color: Color.fromARGB(255, 61, 60, 60), fontWeight: FontWeight.bold, fontSize: 24),),
      SizedBox(height: 10,),
      Text("Age Rating", style: TextStyle(color: Colors.grey))

    ]);
  }
}