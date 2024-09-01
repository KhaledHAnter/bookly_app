import 'package:bookly_app/Core/errors/failuars.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, Param> {
  Future<Either<Failure, T>> call([Param param]);
}

class NoParam {}
