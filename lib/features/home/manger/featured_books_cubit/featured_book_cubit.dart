import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/book_model/book_model.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failure.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
final HomeRepo homeRepo;
  Future <void> fetchFeaturedBook() async {
    emit(FeaturedBookLoading());
var result =await homeRepo.fetchFeaturedBooks();
result.fold((failure) {
  emit(FeaturedBookFailure(errorMessage: failure.message));

}, (books) {
  emit(FeaturedBookSuccess(bookModel: books));

},);
  }
}
