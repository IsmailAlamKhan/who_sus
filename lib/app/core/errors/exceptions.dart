import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'exceptions.freezed.dart';

@freezed
class AppException with _$AppException {
  const factory AppException.unknown() = _Unknown;
  const factory AppException.custom(String message) = AppExceptionCustom;
  const factory AppException.auth(AuthException exception) = AppExceptionAuth;
  const factory AppException.platform(PlatformException exception) = AppExceptionPlatform;
  const factory AppException.postgrest(PostgrestException exception) = AppExceptionPostgrest;
  const factory AppException.storage(StorageException exception) = AppExceptionStorage;
}

class AppExceptionData implements Exception {
  final String message;
  final String? code;
  final AppException exception;
  AppExceptionData({required this.message, required this.code, this.exception = const AppException.unknown()});
  AppExceptionData _addException(AppException exception) {
    // return AppExceptionData(message, code, exception);
    return AppExceptionData(message: message, code: code, exception: exception);
  }
}

class PostgreRestExceptionData extends AppExceptionData {
  PostgreRestExceptionData({required super.message, required super.code});

  @override
  String toString() {
    return message;
  }

  factory PostgreRestExceptionData.fromJson(Map<String, dynamic> map) {
    return PostgreRestExceptionData(
      message: map['message'],
      code: map['code'],
    );
  }
}

extension AppExceptionExtension on AppException {
  AppExceptionData get normalized {
    return when(
      unknown: () => AppExceptionData(message: 'An unknown error occurred.', code: 'unknown'),
      storage: (exception) {
        if (exception.statusCode == '413') {
          return AppExceptionData(
            message: 'File size is too large.',
            code: exception.statusCode,
            // details: exception.error,
          );
        }
        return AppExceptionData(
          message: 'There was an error while uploading the file.',
          code: exception.statusCode,
          // details: exception.error,
        );
      },
      custom: (message) => AppExceptionData(message: message, code: 'custom'),
      auth: (exception) {
        String msg = exception.message;
        if (msg.contains('duplicate key value violates unique constraint "profiles_email_key"')) {
          msg = 'An user with this email already exists';
        } else if (msg.contains('duplicate key value violates unique constraint "profiles_username_key"')) {
          msg = 'An user with this username already exists';
        }
        return AppExceptionData(message: msg, code: exception.statusCode);
      },
      platform: (exception) {
        String msg;
        if (exception.code == 'authorize_failed') {
          msg = 'Failed to authenticate, either the user canceled or an error occurred. Please try again.';
        } else {
          msg = exception.message ?? 'Unknown error';
        }
        return AppExceptionData(
          message: msg,
          code: exception.code,
          // details: exception.details,
        );
      },
      postgrest: (exception) {
        if (exception.code == 'P0001') {
          return PostgreRestExceptionData.fromJson(jsonDecode(exception.message) as Map<String, dynamic>);
        }
        return AppExceptionData(message: exception.message, code: exception.code);
      },
    )._addException(this);
  }
}
