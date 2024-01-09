import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../core/widgets/custom_loading_widget.dart';
import '../../../../Home/Presentation/views/widgets/custom_best _seller_item.dart';
import '../../view_models/search_books_cubit/search_books_cubit.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => CustomBooksItem(
              book: state.books[index],
            ),
          );
        } else if (state is SearchBooksFailure) {
          return CustomFailureWidget(state.failure);
        } else {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 2.7 / 4,
                      child: ShimmerWidget(width: 0, height: 0),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShimmerWidget(width: double.infinity, height: 12),
                            const SizedBox(
                              height: 4,
                            ),
                            ShimmerWidget(width: double.infinity, height: 12),
                            const SizedBox(
                              height: 10,
                            ),
                            ShimmerWidget(width: 220, height: 12),
                            const SizedBox(
                              height: 5,
                            ),
                            ShimmerWidget(width: 190, height: 12),
                            const SizedBox(
                              height: 5,
                            ),
                            ShimmerWidget(width: 90, height: 12),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                ShimmerWidget(width: 60, height: 12),
                                const Spacer(),
                                ShimmerWidget(width: 70, height: 12),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
