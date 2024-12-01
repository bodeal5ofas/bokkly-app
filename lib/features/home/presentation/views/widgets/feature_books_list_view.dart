import 'package:bokkly_app/core/utils/app_routers.dart';
import 'package:bokkly_app/core/utils/custom_error_widget.dart';
import 'package:bokkly_app/core/utils/loading_widget.dart';
import 'package:bokkly_app/features/home/presentation/view_model/featured_books_cubit/feature_books_cubit.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSucesss) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.booksList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouters.kDetailsView,
                          extra: state.booksList[index]);
                    },
                    child: FeatureBooksIteam(
                      imageUrl: state.booksList[index].volumeInfo.imageLinks
                              ?.thumbnail ??
                          '',
                    )),
              ),
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
