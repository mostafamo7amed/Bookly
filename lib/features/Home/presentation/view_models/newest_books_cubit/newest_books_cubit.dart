import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> getNewestBooks() async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure){
      emit(NewestBooksFailure(failure.errorMessage));
    }, (books){
      emit(NewestBooksSuccess(books));
    });
  }
}
