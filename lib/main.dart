import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(const BookLy());
}

class BookLy extends StatelessWidget {
  const BookLy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme())
          .copyWith(scaffoldBackgroundColor: mPrimaryColor),
    );
  }
}
