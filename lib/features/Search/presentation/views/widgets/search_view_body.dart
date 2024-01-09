import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_field.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/Domain/repos/home_repo_impl.dart';
import '../../view_models/search_books_cubit/search_books_cubit.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchField(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Search result",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.w700)),
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
