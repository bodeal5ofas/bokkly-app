import 'package:bokkly_app/constant.dart';
import 'package:bokkly_app/core/utils/app_routers.dart';
import 'package:bokkly_app/core/utils/assets.dart';
import 'package:bokkly_app/features/home/presentation/views/home_screen.dart';
import 'package:bokkly_app/features/splash/presentation/views/widgets/slidable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideableAnimation;
  @override
  void initState() {
    initSlidingAnimation();
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 10,
        ),
        SlidableText(slideableAnimation: slideableAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideableAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(kAnimationTransation, () {
      GoRouter.of(context).push(AppRouters.kHomeView);
    }
        // () => Get.to(() => const HomeScreen(),
        //     duration: const Duration(seconds: 1),
        //     transition: Transition.downToUp),
        );
  }
}
