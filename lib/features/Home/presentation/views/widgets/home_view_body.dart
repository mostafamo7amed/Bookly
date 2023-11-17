import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const FeaturedListView(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Best Seller",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}

