part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> bookModel;

  const FeaturedBookSuccess({required this.bookModel});
}

class FeaturedBookFailure extends FeaturedBookState {
  final String errorMessage;

  const FeaturedBookFailure({required this.errorMessage});
}








