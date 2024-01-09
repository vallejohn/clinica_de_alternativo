part of 'core.dart';

abstract class UseCaseWithNoParams<T>{
  Future<Either<Failure, T>> call();
}

abstract class UseCaseWithParams<T, P>{
  Future<Either<Failure, T>> call(P params);
}