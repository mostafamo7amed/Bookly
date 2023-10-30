import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_paths.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppPaths.bookDetailsView);
      },
      child: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage(AssetData.testImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "memory landstati onmemor ymemor ymemor ymemor ymemoryvvv",
                        style:
                            Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "r ymemoryvvv",
                        style: Styles.textStyle18.copyWith(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            '99.99\$',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          const BookRating(),
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
