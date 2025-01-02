import 'package:bookapp/core/widgets/custom_error_widget.dart';
import 'package:bookapp/core/widgets/custom_loading_indicator.dart';
import 'package:bookapp/features/home/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
       if( state is SimilarBooksSuccess){
         return SizedBox(
           height: MediaQuery
               .of(context)
               .size
               .height * .15,
           child: ListView.builder(
             itemCount: state.books.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {
                 return  Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5),
                   child: GestureDetector(
                     onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.books[index]),
                     child: CustomBookImage(
                       image: state.books[index].volumeInfo.imageLinks!.thumbnail,
                     ),
                   ),
                 );
               }),
         );
       }else if(state is SimilarBooksFailure){
return CustomErrorWidget(errorMessage: state.errMessage);
       }else{
         return CustomLoadingIndicator();
       }
      },
    );
  }
}
