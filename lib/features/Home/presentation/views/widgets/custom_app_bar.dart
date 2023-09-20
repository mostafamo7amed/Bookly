import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetData.logo,height: 40,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_sharp),iconSize: 28,)
        ],
      ),
    );
  }
}
