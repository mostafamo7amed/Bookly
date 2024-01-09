import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../Home/Domain/repos/home_repo.dart';
import '../../../../Home/data/data_source/book_model/book_model.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());

  HomeRepo homeRepo;
  Future<void> searchBooks({required String book}) async {
    emit(SearchBooksInitial());
    var result = await homeRepo.fetchSearchedBooks( text: book);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
