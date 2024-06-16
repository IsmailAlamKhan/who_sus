import 'exceptions.dart';

/// This file defines the Failure class, which represents an error that occurred during the execution of a function.
class Failure {
  /// The data associated with the exception.
  /// This data can be used to provide more information about the error in the presentation layer.
  final AppExceptionData exceptionData;

  Failure(this.exceptionData);
}
