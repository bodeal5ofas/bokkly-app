import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
       const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle18,
        ),
     const   SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style: Styles.textStyle16,
        )
      ],
    );
  }
}
