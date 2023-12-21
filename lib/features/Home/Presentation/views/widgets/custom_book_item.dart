import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/Home/Domain/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_paths.dart';
import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({required this.bookModel, Key? key}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppPaths.bookDetailsView, extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            placeholder: (context, url) => ShimmerWidget(width: 0, height: 0),
            errorWidget: (context, url, error) => const Image(
              fit: BoxFit.fill,
              image: NetworkImage(AssetData.imageNotFound),
            ),
          ),
        ),
      ),
    );
  }
}
