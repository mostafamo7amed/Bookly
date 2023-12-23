import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFailureWidget extends StatelessWidget {
  const CustomFailureWidget(this.failure, {Key? key}) : super(key: key);
  final String failure;
  @override
  Widget build(BuildContext context) {
    return Text(
      failure,
      style: Styles.textStyle18,
    );
  }
}
