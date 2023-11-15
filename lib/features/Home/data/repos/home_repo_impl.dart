import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/Home/data/models/BookModel.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:computer science&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioException(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=subject:computer science');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioException(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }
}
