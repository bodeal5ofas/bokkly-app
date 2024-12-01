import 'package:bokkly_app/core/utils/custom_error_widget.dart';
import 'package:bokkly_app/core/utils/loading_widget.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/best_seller_iteam.dart';
import 'package:bokkly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return const Center(child: Text('No result ,Search first'),);
        } else if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsetsDirectional.zero,
            itemCount: state.booksList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: BestSellerIteam(
                bookModel: state.booksList[index],
              ),
            ),
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
