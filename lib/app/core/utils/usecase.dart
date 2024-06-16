import 'typedefs.dart';

abstract class UseCase<Type, Params> {
  FutureEither<Type> call(Params params);
}

abstract class StreamUseCase<Type, Params> {
  StreamEither<Type> call(Params params);
}
