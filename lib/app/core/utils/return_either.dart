import 'package:fpdart/fpdart.dart';

import '../errors/exceptions.dart';
import '../errors/failure.dart';
import 'catch_exception.dart';
import 'typedefs.dart';

FutureEither<T> returnEither<T>(Future<T> Function() input) async {
  try {
    final res = await catchException(input);
    return Right(res);
  } on AppException catch (e) {
    return Left(Failure(e.normalized));
  }
}

StreamEither<T> returnEitherStream<T>(Stream<T> Function() input) async* {
  // return input().map((event) => Right(event))
  //   ..handleError((error) {
  //     AppException exception;
  //     if (error is AppException) {
  //       exception = error;
  //     } else {
  //       exception = const AppException.unknown();
  //     }

  //     return Left(Failure(exception.normalized));
  //   });
  try {
    await for (final event in input()) {
      yield Right(event);
    }
  } on AppException catch (e) {
    yield Left(Failure(e.normalized));
  }
}
