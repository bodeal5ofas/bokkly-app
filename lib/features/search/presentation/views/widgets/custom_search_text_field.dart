import 'package:bokkly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  @override
  String searchTitle='';
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        searchTitle = value;
      },
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
            onPressed: () {
              BlocProvider.of<SearchCubit>(context)
                  .fetchSearchedBook(searchTitle: searchTitle);
            },
            icon: const Icon(Icons.search)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
