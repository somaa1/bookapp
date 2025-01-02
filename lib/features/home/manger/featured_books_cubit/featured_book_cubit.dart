import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/book_model/book_model.dart';

part 'featured_book_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
final HomeRepo homeRepo;
  Future <void> fetchFeaturedBook() async {
    emit(FeaturedBookLoading());
var result =await homeRepo.fetchFeaturedBooks();
result.fold((failure) {
  emit(FeaturedBooksFailure(errorMessage: failure.message));

}, (books) {
  emit(FeaturedBooksSuccess(bookModel: books));

},);
  }
}
