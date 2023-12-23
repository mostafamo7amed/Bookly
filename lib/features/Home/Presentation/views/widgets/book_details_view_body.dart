import 'package:bookly/features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'package:bookly/features/Home/Domain/models/book_model/book_model/book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.24),
                  child: CustomBookItem(bookModel: bookModel),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${bookModel.volumeInfo!.title}',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle25.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    '${bookModel.volumeInfo!.authors![0]}',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle20.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                BookPageCount(
                  mainAxisAlignment: MainAxisAlignment.center,
                  count: bookModel.volumeInfo!.pageCount ?? 0,
                  lang: bookModel.volumeInfo!.language ?? 'EN',
                ),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 5,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    textAlign: TextAlign.start,
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
