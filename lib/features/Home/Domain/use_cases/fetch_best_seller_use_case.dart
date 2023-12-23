import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/Domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';
import '../repos/home_repo.dart';

class FetchBestSellerBooks extends UseCase<List<BookEntity>, void> {
  HomeRepo homeRepo;
  FetchBestSellerBooks(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    return await homeRepo.fetchBestSellerBooks();
  }
}
