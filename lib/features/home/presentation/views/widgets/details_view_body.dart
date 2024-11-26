import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/details_app_bar.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/similary_books_list_view.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/smiliar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  DetailsAppBar(),
                  BooksDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SmiliarBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
