import 'package:bookly/features/Home/Domain/models/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_paths.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({required this.book, Key? key}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppPaths.bookDetailsView, extra: book);
      },
      child: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CustomBookItem(bookModel: book),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.volumeInfo.title!,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        book.volumeInfo.authors![0],
                        style: Styles.textStyle18.copyWith(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          BookPageCount(
                            count: book.volumeInfo.pageCount!,
                            lang: book.volumeInfo.language!,
                          ),
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
}
