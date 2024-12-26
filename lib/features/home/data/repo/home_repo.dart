 import 'package:bookapp/features/home/data/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo{
  //بحدد شو ححط هان دوال بس الاسم
   Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
   Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();

 }