import 'package:bookly/features/Search/presentation/views/widgets/search_field.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/presentation/views/widgets/custom_best _seller_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchField(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Search result",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}