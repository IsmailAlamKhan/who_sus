import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../errors/exceptions.dart';

Future<T> catchException<T>(Future<T> Function() input) async {
  AppException? exception;
  StackTrace? stackTrace;
  dynamic rawException;
  try {
    return await input();
  } on AuthException catch (e, s) {
    exception = AppException.auth(e);
    stackTrace = s;
    rawException = e;
  } on PlatformException catch (e, s) {
    exception = AppException.platform(e);
    stackTrace = s;
    rawException = e;
  } on PostgrestException catch (e, s) {
    // exception = AppException(message: "An error occurred while connecting to the server");
    exception = AppException.postgrest(e);
    stackTrace = s;
    rawException = e;
  } on StorageException catch (e, s) {
    exception = AppException.storage(e);
    stackTrace = s;
    rawException = e;
  } on AppException catch (e, s) {
    exception = e;
    stackTrace = s;
    rawException = e;
  } catch (e, s) {
    exception = const AppException.unknown();
    stackTrace = s;
    rawException = e;
  }
  debugPrint('Raw Exception: $rawException');
  debugPrint('AppException: ${exception.normalized.message}');
  debugPrintStack(stackTrace: stackTrace);
  throw exception;
}
