import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../manger/featured_books_cubit/featured_book_cubit.dart';
import '../../../manger/newest_book/newest_book_cubit.dart';
import 'best_seller_list_view_item.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if(state is NewestBookSuccess){
          return ListView.builder(
            itemCount: state.bookModel.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding:  const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(bookmodel: state.bookModel[index],),
              );
            },
          );
        }else if (state is NewestBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}