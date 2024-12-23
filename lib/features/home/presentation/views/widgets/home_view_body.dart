import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_appbar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [CustomAppbar()
        ,
        FeaturedBooksListView()

      ],
    );
  }
}
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: FeaturedListViewItem(),
        );
      },),
    );
  }
}


