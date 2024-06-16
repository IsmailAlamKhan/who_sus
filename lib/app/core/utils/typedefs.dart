import 'package:fpdart/fpdart.dart';

import '../errors/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef StreamEither<T> = Stream<Either<Failure, T>>;
