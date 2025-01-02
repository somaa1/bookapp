import 'package:dartz/dartz.dart';

import '../../../../core/book_model/book_model.dart';
import '../../../../core/errors/failure.dart';

abstract class HomeRepo{
  //بحدد شو ححط هان دوال بس الاسم
   Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
   Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
   Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
       {required String category});

 }