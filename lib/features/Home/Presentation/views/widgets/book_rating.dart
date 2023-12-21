import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookPageCount extends StatelessWidget {
  const BookPageCount(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count,
      required this.lang});
  final int count;
  final String lang;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.menu_book,
              color: Colors.grey[400],
              size: 35,
            )),
        Text(
          '($count)',
          style: Styles.textStyle18.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          lang.toUpperCase(),
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
