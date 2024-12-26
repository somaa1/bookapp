part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {}

class NewestBookLoading extends NewestBookState {}

class NewestBookSuccess extends NewestBookState {
  final List<BookModel> bookModel;

  const NewestBookSuccess({required this.bookModel});
}

class NewestBookFailure extends NewestBookState {
  final String errorMessage;

  const NewestBookFailure({required this.errorMessage});
}
