import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/features/Home/data/data_source/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';
import '../repos/home_repo.dart';

class FetchBestSellerBooks extends UseCase<List<BookModel>, void> {
  HomeRepo homeRepo;
  FetchBestSellerBooks(this.homeRepo);

  @override
  Future<Either<Failure, List<BookModel>>> call([void param]) async {
    return await homeRepo.fetchBestSellerBooks();
  }
}
