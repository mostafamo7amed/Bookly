import 'package:bookly/features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_source/book_model/book_model.dart';
import '../view_models/similar_books_cubit/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({required this.book, Key? key}) : super(key: key);

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.book.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(bookModel: widget.book),
    );
  }
}
