import 'package:bokkly_app/core/utils/service_locater.dart';
import 'package:bokkly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:bokkly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bokkly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child:  SearchViewBody()),
    );
  }
}
