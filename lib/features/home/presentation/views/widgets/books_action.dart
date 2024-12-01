//import 'dart:developer';

import 'package:bokkly_app/core/utils/function/url_launcher.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/books_action_iteam.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const BooksActionIteam(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            title: 'Free',
          ),
          BooksActionIteam(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
            title: 'Frames Preview',
            backgroundColor: const Color.fromARGB(255, 255, 153, 122),
            textColor: Colors.white,
            onPressed: () async {
              customLaunchUrl(
                  urlLink: bookModel.volumeInfo.previewLink ?? '',
                  context: context);
            },
          )
        ],
      ),
    );
  }
}
