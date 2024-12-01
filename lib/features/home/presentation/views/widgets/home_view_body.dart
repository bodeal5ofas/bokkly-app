import 'package:bokkly_app/core/utils/styles.dart';
// 'package:bokkly_app/features/home/presentation/views/widgets/best_seller_iteam.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/feature_books_list_view.dart';
//import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: CustomAppBar(),
              ),
              FeatureBooksListView(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          // hasScrollBody: false,
          // fillOverscroll: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
