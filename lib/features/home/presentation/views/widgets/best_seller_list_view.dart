import 'dart:developer';

import 'package:bokkly_app/core/utils/custom_error_widget.dart';
import 'package:bokkly_app/core/utils/loading_widget.dart';
import 'package:bokkly_app/features/home/presentation/view_model/newest_book/newest_book_cubit.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/best_seller_iteam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuceess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsetsDirectional.zero,
            itemCount: state.booksList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: BestSellerIteam(
                bookModel: state.booksList[index],
              ),
            ),
          );
        } else if (state is NewestBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
