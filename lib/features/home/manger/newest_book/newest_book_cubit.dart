import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/book_model/book_model.dart';
import '../../data/repo/home_repo.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;

  Future<void>  newestBookBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewestBookFailure(errorMessage: failure.message));
      },
      (books) {
        emit(NewestBookSuccess(bookModel: books));
      },
    );
  }
}
