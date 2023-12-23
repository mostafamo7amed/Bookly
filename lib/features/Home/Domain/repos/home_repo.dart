import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/Domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks(
      {required String category});
}
