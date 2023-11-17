import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/custom_best _seller_item.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => Container(), //CustomBooksItem(),
    );
  }
}
