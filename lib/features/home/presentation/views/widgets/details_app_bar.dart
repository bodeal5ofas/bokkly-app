import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.search))
    ],);
  }
}