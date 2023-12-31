import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/features/Home/Domain/repos/home_repo.dart';
import 'package:bookly/features/Home/data/data_source/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
