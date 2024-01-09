import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/data/data_source/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String text});
}
