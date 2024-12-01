import 'package:bokkly_app/core/utils/service_locater.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bokkly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DetailsViewBody(
          bookModel: bookModel,
        ),
      ),
    );
  }
}
