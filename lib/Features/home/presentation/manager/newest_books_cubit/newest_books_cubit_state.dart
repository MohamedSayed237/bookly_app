part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  const NewestBooksFailure({required this.errMessage});

  final String errMessage;
}

final class NewestBooksSuccess extends NewestBooksState {
  const NewestBooksSuccess({required this.books});

  final List<BookModel> books;
}
