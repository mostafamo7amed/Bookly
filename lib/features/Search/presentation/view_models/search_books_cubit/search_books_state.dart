part of 'search_books_cubit.dart';

@immutable
abstract class SearchBooksState {}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksLoading extends SearchBooksState {}

class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;
  SearchBooksSuccess(this.books);
}

class SearchBooksFailure extends SearchBooksState {
  final String failure;
  SearchBooksFailure(this.failure);
}