import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: FeatureBooksIteam(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: BookRating(
          rating: 0,
          count: bookModel.volumeInfo.pageCount!,
        )),
        const SizedBox(
          height: 15,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
