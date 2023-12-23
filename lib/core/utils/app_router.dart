import 'package:bookly/core/utils/app_paths.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Search/presentation/views/search_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly/features/Home/Domain/models/book_model/book_model/book_model.dart';
import '../../features/Home/Domain/repos/home_repo_impl.dart';
import '../../features/Home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppPaths.splash,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: AppPaths.homeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: AppPaths.bookDetailsView,
        builder: (context, state) {
          return BlocProvider(
              create: (BuildContext context) =>
                  SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(
                book: state.extra as BookModel,
              ));
        },
      ),
      GoRoute(
        path: AppPaths.searchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
