import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
        required this.onPress,
        required this.text,
        this.borderRadius,
        this.backgroundColor,
        this.textColor,
      })
      : super(key: key);

  String text;
  Function onPress;
  BorderRadius? borderRadius;
  Color? backgroundColor;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor?? Colors.black,
          ),
        ),
      ),
    );
  }
}
