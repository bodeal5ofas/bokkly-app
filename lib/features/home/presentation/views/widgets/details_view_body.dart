//import 'package:bokkly_app/core/utils/styles.dart';
//import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
//import 'package:bokkly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/core/utils/custom_error_widget.dart';
import 'package:bokkly_app/core/utils/loading_widget.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/details_app_bar.dart';
//import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
//import 'package:bokkly_app/features/home/presentation/views/widgets/similary_books_list_view.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/smiliar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:get/get_connect/http/src/utils/utils.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBook(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                   const   DetailsAppBar(),
                      BooksDetailsSection(bookModel: widget.bookModel,),
                    const  Expanded(
                        child: SizedBox(
                          height: 20,
                        ),
                      ),
                     const SmiliarBooksSection(),
                     const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
