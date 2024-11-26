import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: const FeatureBooksIteam(),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'The Jungle Box',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'The Rejuirad Kibilng',
          style: Styles.textStyle18.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(child: BookRating()),
        const SizedBox(
          height: 15,
        ),
        const BooksAction(),
      ],
    );
  }
}
