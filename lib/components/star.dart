import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    const filledStar = Icons.star;
    const emptyStar = Icons.star_border;

    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => Icon(
              index < rating ? filledStar : emptyStar,
              color: Colors.yellow, // Use yellow for stars
              size: 20,
            ),
          ),
        ),

        SizedBox(height: 10,),

         Text("$rating Star Ratings", style: TextStyle(color: Colors.grey), )
      ],
    );
  }
}