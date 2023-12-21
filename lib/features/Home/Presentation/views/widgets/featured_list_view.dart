import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/Home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_failure_widget.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookItem(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomFailureWidget(state.failure);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AspectRatio(
                    aspectRatio: 2.6 / 4,
                    child: ShimmerWidget(
                      width: 0,
                      height: 0,
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
