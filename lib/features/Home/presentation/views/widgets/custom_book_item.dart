import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
              image: AssetImage(AssetData.testImage),
              fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
