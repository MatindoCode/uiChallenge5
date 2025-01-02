import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final String text;
  const Price({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.zero,
        //fixedSize: const Size(70, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
        ),
         minimumSize: const Size(70, 30), 
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Text(text ,style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
      ),


    );
  }
}