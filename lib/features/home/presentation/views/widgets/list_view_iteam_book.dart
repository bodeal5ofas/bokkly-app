import 'package:bokkly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatureBooksIteam extends StatelessWidget {
  const FeatureBooksIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
