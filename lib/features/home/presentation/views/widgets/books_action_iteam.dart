import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksActionIteam extends StatelessWidget {
  const BooksActionIteam(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.textColor,
      required this.borderRadius, this.onPressed});
  final String title;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20),
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius,
              )),
          child: Text(
            '$title',
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
