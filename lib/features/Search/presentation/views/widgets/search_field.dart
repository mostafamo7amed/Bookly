import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/search_books_cubit/search_books_cubit.dart';

class SearchField extends StatelessWidget {
   SearchField({Key? key}) : super(key: key);

  TextEditingController searchText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: TextFormField(
        controller: searchText,
        onFieldSubmitted: (value) {
          print('--------------${value.toString()}');
          print('--------------=${searchText.text}');
          BlocProvider.of<SearchBooksCubit>(context).searchBooks(book: searchText.text);
        },
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            iconSize: 24,
            color: Colors.grey,
            icon: const Icon(Icons.search), onPressed: () {

          },
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
