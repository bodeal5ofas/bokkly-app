import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/similary_books_list_view.dart';
import 'package:flutter/material.dart';

class SmiliarBooksSection extends StatelessWidget {
  const SmiliarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        const SimilaryBooksListView(),
      ],
    );
  }
}
