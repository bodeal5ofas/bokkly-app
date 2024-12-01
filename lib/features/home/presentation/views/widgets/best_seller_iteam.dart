import 'package:bokkly_app/core/utils/app_routers.dart';
import 'package:bokkly_app/core/utils/assets.dart';
import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/list_view_iteam_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerIteam extends StatelessWidget {
  const BestSellerIteam({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          FeatureBooksIteam(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:  Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle18.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Free €',
                        style: Styles.textStyle16
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       Padding(
                        padding:const EdgeInsets.only(right: 5),
                        child: BookRating(count: bookModel.volumeInfo.pageCount!,rating: 0 ,),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
