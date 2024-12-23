import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height *.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: const BoxDecoration(
              image:DecorationImage(image:  AssetImage(AssetsData.testPic),fit: BoxFit.fill)
          ),),
      ),
    );
  }
}
