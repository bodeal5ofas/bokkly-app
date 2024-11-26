import 'package:bokkly_app/features/home/presentation/views/widgets/books_action_iteam.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          BooksActionIteam(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            title: '19.99€',
          ),
          BooksActionIteam(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16)),
              title: 'Frames Preview',
              backgroundColor: Color.fromARGB(255, 255, 153, 122),
              textColor: Colors.white)
        ],
      ),
    );
  }
}
