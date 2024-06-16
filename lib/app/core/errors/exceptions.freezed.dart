// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'AppException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AppException {
  const factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$AppExceptionCustomImplCopyWith<$Res> {
  factory _$$AppExceptionCustomImplCopyWith(_$AppExceptionCustomImpl value,
          $Res Function(_$AppExceptionCustomImpl) then) =
      __$$AppExceptionCustomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppExceptionCustomImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionCustomImpl>
    implements _$$AppExceptionCustomImplCopyWith<$Res> {
  __$$AppExceptionCustomImplCopyWithImpl(_$AppExceptionCustomImpl _value,
      $Res Function(_$AppExceptionCustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppExceptionCustomImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppExceptionCustomImpl implements AppExceptionCustom {
  const _$AppExceptionCustomImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.custom(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionCustomImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionCustomImplCopyWith<_$AppExceptionCustomImpl> get copyWith =>
      __$$AppExceptionCustomImplCopyWithImpl<_$AppExceptionCustomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) {
    return custom(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) {
    return custom?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class AppExceptionCustom implements AppException {
  const factory AppExceptionCustom(final String message) =
      _$AppExceptionCustomImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AppExceptionCustomImplCopyWith<_$AppExceptionCustomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppExceptionAuthImplCopyWith<$Res> {
  factory _$$AppExceptionAuthImplCopyWith(_$AppExceptionAuthImpl value,
          $Res Function(_$AppExceptionAuthImpl) then) =
      __$$AppExceptionAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthException exception});
}

/// @nodoc
class __$$AppExceptionAuthImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionAuthImpl>
    implements _$$AppExceptionAuthImplCopyWith<$Res> {
  __$$AppExceptionAuthImplCopyWithImpl(_$AppExceptionAuthImpl _value,
      $Res Function(_$AppExceptionAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AppExceptionAuthImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AuthException,
    ));
  }
}

/// @nodoc

class _$AppExceptionAuthImpl implements AppExceptionAuth {
  const _$AppExceptionAuthImpl(this.exception);

  @override
  final AuthException exception;

  @override
  String toString() {
    return 'AppException.auth(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionAuthImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionAuthImplCopyWith<_$AppExceptionAuthImpl> get copyWith =>
      __$$AppExceptionAuthImplCopyWithImpl<_$AppExceptionAuthImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) {
    return auth(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) {
    return auth?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AppExceptionAuth implements AppException {
  const factory AppExceptionAuth(final AuthException exception) =
      _$AppExceptionAuthImpl;

  AuthException get exception;
  @JsonKey(ignore: true)
  _$$AppExceptionAuthImplCopyWith<_$AppExceptionAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppExceptionPlatformImplCopyWith<$Res> {
  factory _$$AppExceptionPlatformImplCopyWith(_$AppExceptionPlatformImpl value,
          $Res Function(_$AppExceptionPlatformImpl) then) =
      __$$AppExceptionPlatformImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlatformException exception});
}

/// @nodoc
class __$$AppExceptionPlatformImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionPlatformImpl>
    implements _$$AppExceptionPlatformImplCopyWith<$Res> {
  __$$AppExceptionPlatformImplCopyWithImpl(_$AppExceptionPlatformImpl _value,
      $Res Function(_$AppExceptionPlatformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AppExceptionPlatformImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as PlatformException,
    ));
  }
}

/// @nodoc

class _$AppExceptionPlatformImpl implements AppExceptionPlatform {
  const _$AppExceptionPlatformImpl(this.exception);

  @override
  final PlatformException exception;

  @override
  String toString() {
    return 'AppException.platform(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionPlatformImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionPlatformImplCopyWith<_$AppExceptionPlatformImpl>
      get copyWith =>
          __$$AppExceptionPlatformImplCopyWithImpl<_$AppExceptionPlatformImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) {
    return platform(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) {
    return platform?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) {
    return platform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) {
    return platform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(this);
    }
    return orElse();
  }
}

abstract class AppExceptionPlatform implements AppException {
  const factory AppExceptionPlatform(final PlatformException exception) =
      _$AppExceptionPlatformImpl;

  PlatformException get exception;
  @JsonKey(ignore: true)
  _$$AppExceptionPlatformImplCopyWith<_$AppExceptionPlatformImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppExceptionPostgrestImplCopyWith<$Res> {
  factory _$$AppExceptionPostgrestImplCopyWith(
          _$AppExceptionPostgrestImpl value,
          $Res Function(_$AppExceptionPostgrestImpl) then) =
      __$$AppExceptionPostgrestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostgrestException exception});
}

/// @nodoc
class __$$AppExceptionPostgrestImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionPostgrestImpl>
    implements _$$AppExceptionPostgrestImplCopyWith<$Res> {
  __$$AppExceptionPostgrestImplCopyWithImpl(_$AppExceptionPostgrestImpl _value,
      $Res Function(_$AppExceptionPostgrestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AppExceptionPostgrestImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as PostgrestException,
    ));
  }
}

/// @nodoc

class _$AppExceptionPostgrestImpl implements AppExceptionPostgrest {
  const _$AppExceptionPostgrestImpl(this.exception);

  @override
  final PostgrestException exception;

  @override
  String toString() {
    return 'AppException.postgrest(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionPostgrestImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionPostgrestImplCopyWith<_$AppExceptionPostgrestImpl>
      get copyWith => __$$AppExceptionPostgrestImplCopyWithImpl<
          _$AppExceptionPostgrestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) {
    return postgrest(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) {
    return postgrest?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) {
    if (postgrest != null) {
      return postgrest(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) {
    return postgrest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) {
    return postgrest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) {
    if (postgrest != null) {
      return postgrest(this);
    }
    return orElse();
  }
}

abstract class AppExceptionPostgrest implements AppException {
  const factory AppExceptionPostgrest(final PostgrestException exception) =
      _$AppExceptionPostgrestImpl;

  PostgrestException get exception;
  @JsonKey(ignore: true)
  _$$AppExceptionPostgrestImplCopyWith<_$AppExceptionPostgrestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppExceptionStorageImplCopyWith<$Res> {
  factory _$$AppExceptionStorageImplCopyWith(_$AppExceptionStorageImpl value,
          $Res Function(_$AppExceptionStorageImpl) then) =
      __$$AppExceptionStorageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageException exception});
}

/// @nodoc
class __$$AppExceptionStorageImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionStorageImpl>
    implements _$$AppExceptionStorageImplCopyWith<$Res> {
  __$$AppExceptionStorageImplCopyWithImpl(_$AppExceptionStorageImpl _value,
      $Res Function(_$AppExceptionStorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AppExceptionStorageImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as StorageException,
    ));
  }
}

/// @nodoc

class _$AppExceptionStorageImpl implements AppExceptionStorage {
  const _$AppExceptionStorageImpl(this.exception);

  @override
  final StorageException exception;

  @override
  String toString() {
    return 'AppException.storage(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionStorageImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionStorageImplCopyWith<_$AppExceptionStorageImpl> get copyWith =>
      __$$AppExceptionStorageImplCopyWithImpl<_$AppExceptionStorageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(String message) custom,
    required TResult Function(AuthException exception) auth,
    required TResult Function(PlatformException exception) platform,
    required TResult Function(PostgrestException exception) postgrest,
    required TResult Function(StorageException exception) storage,
  }) {
    return storage(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(String message)? custom,
    TResult? Function(AuthException exception)? auth,
    TResult? Function(PlatformException exception)? platform,
    TResult? Function(PostgrestException exception)? postgrest,
    TResult? Function(StorageException exception)? storage,
  }) {
    return storage?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(String message)? custom,
    TResult Function(AuthException exception)? auth,
    TResult Function(PlatformException exception)? platform,
    TResult Function(PostgrestException exception)? postgrest,
    TResult Function(StorageException exception)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(AppExceptionCustom value) custom,
    required TResult Function(AppExceptionAuth value) auth,
    required TResult Function(AppExceptionPlatform value) platform,
    required TResult Function(AppExceptionPostgrest value) postgrest,
    required TResult Function(AppExceptionStorage value) storage,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(AppExceptionCustom value)? custom,
    TResult? Function(AppExceptionAuth value)? auth,
    TResult? Function(AppExceptionPlatform value)? platform,
    TResult? Function(AppExceptionPostgrest value)? postgrest,
    TResult? Function(AppExceptionStorage value)? storage,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(AppExceptionCustom value)? custom,
    TResult Function(AppExceptionAuth value)? auth,
    TResult Function(AppExceptionPlatform value)? platform,
    TResult Function(AppExceptionPostgrest value)? postgrest,
    TResult Function(AppExceptionStorage value)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class AppExceptionStorage implements AppException {
  const factory AppExceptionStorage(final StorageException exception) =
      _$AppExceptionStorageImpl;

  StorageException get exception;
  @JsonKey(ignore: true)
  _$$AppExceptionStorageImplCopyWith<_$AppExceptionStorageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
