import 'package:bookly/core/utils/app_paths.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Search/presentation/views/search_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/views/book_details_view.dart';

abstract class AppRouter{
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
          return const BookDetailsView();
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