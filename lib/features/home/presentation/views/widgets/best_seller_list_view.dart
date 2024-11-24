import 'package:bokkly_app/features/home/presentation/views/widgets/best_seller_iteam.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsetsDirectional.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: BestSellerIteam(),
      ),
    );
  }
}
