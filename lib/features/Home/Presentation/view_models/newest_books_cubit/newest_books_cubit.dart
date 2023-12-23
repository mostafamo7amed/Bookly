import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/features/Home/Domain/repos/home_repo.dart';
import 'package:meta/meta.dart';

import 'package:bookly/features/Home/Domain/models/book_model/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
