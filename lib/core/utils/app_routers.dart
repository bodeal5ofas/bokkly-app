import 'package:bokkly_app/features/home/presentation/views/details_view.dart';
import 'package:bokkly_app/features/home/presentation/views/home_screen.dart';
import 'package:bokkly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) => DetailsView(),
    )
  ]);
}
