import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/books_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((Failure) {
      emit(NewestBooksFailure(errMessage: Failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
