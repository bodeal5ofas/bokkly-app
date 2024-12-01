import 'package:bokkly_app/constant.dart';
import 'package:bokkly_app/core/utils/app_routers.dart';
import 'package:bokkly_app/core/utils/service_locater.dart';
import 'package:bokkly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bokkly_app/features/home/presentation/view_model/featured_books_cubit/feature_books_cubit.dart';
import 'package:bokkly_app/features/home/presentation/view_model/newest_book/newest_book_cubit.dart';
//import 'package:bokkly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocater();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBookCubit(getit.get<HomeRepoImpl>())..getNewestBook(),
        ),
        BlocProvider(
          create: (context) => FeatureBooksCubit(getit.get<HomeRepoImpl>())..getFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
