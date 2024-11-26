import 'package:bokkly_app/core/utils/app_routers.dart';
import 'package:bokkly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 20,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.kSearchView);
          },
          icon: const Icon(
            Icons.search,
            size: 26,
          ),
        ),
      ],
    );
  }
}
