import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BookLy());
}

class BookLy extends StatelessWidget {
  const BookLy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: mPrimaryColor),
      home: const SplashView(),
    );
  }
}