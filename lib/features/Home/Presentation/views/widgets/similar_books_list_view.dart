import 'package:bookly/core/widgets/custom_failure_widget.dart';
import 'package:bookly/features/Home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_loading_widget.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CustomBookItem(
                      bookModel: state.books[index],
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomFailureWidget(state.failure);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ShimmerWidget(
                      width: 70,
                      height: 100,
                    ),
                  );
                }),
          );
        }
      },
    );
  }
}
