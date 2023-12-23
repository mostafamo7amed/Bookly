import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/Domain/repos/home_repo_impl.dart';
import 'package:bookly/features/Home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/observer.dart';
import 'features/Home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServices();
  Bloc.observer = MyBlocObserver();
  runApp(const BookLy());
}

class BookLy extends StatelessWidget {
  const BookLy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..getFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..getNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme())
            .copyWith(scaffoldBackgroundColor: mPrimaryColor),
      ),
    );
  }
}
