import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type, param> {
  Future<Either<Failure, type>> call([param param]);
}
