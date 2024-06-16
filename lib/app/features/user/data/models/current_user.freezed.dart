// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentUserModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedCurrentUserModel value)
        authenticated,
    required TResult Function(UnauthenticatedCurrentUserModel value)
        unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedCurrentUserModel value)? authenticated,
    TResult? Function(UnauthenticatedCurrentUserModel value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedCurrentUserModel value)? authenticated,
    TResult Function(UnauthenticatedCurrentUserModel value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserModelCopyWith<$Res> {
  factory $CurrentUserModelCopyWith(
          CurrentUserModel value, $Res Function(CurrentUserModel) then) =
      _$CurrentUserModelCopyWithImpl<$Res, CurrentUserModel>;
}

/// @nodoc
class _$CurrentUserModelCopyWithImpl<$Res, $Val extends CurrentUserModel>
    implements $CurrentUserModelCopyWith<$Res> {
  _$CurrentUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedCurrentUserModelImplCopyWith<$Res> {
  factory _$$AuthenticatedCurrentUserModelImplCopyWith(
          _$AuthenticatedCurrentUserModelImpl value,
          $Res Function(_$AuthenticatedCurrentUserModelImpl) then) =
      __$$AuthenticatedCurrentUserModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthenticatedCurrentUserModelImplCopyWithImpl<$Res>
    extends _$CurrentUserModelCopyWithImpl<$Res,
        _$AuthenticatedCurrentUserModelImpl>
    implements _$$AuthenticatedCurrentUserModelImplCopyWith<$Res> {
  __$$AuthenticatedCurrentUserModelImplCopyWithImpl(
      _$AuthenticatedCurrentUserModelImpl _value,
      $Res Function(_$AuthenticatedCurrentUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedCurrentUserModelImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticatedCurrentUserModelImpl
    extends AuthenticatedCurrentUserModel {
  const _$AuthenticatedCurrentUserModelImpl(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'CurrentUserModel.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedCurrentUserModelImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCurrentUserModelImplCopyWith<
          _$AuthenticatedCurrentUserModelImpl>
      get copyWith => __$$AuthenticatedCurrentUserModelImplCopyWithImpl<
          _$AuthenticatedCurrentUserModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedCurrentUserModel value)
        authenticated,
    required TResult Function(UnauthenticatedCurrentUserModel value)
        unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedCurrentUserModel value)? authenticated,
    TResult? Function(UnauthenticatedCurrentUserModel value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedCurrentUserModel value)? authenticated,
    TResult Function(UnauthenticatedCurrentUserModel value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedCurrentUserModel extends CurrentUserModel {
  const factory AuthenticatedCurrentUserModel(final User user) =
      _$AuthenticatedCurrentUserModelImpl;
  const AuthenticatedCurrentUserModel._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedCurrentUserModelImplCopyWith<
          _$AuthenticatedCurrentUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedCurrentUserModelImplCopyWith<$Res> {
  factory _$$UnauthenticatedCurrentUserModelImplCopyWith(
          _$UnauthenticatedCurrentUserModelImpl value,
          $Res Function(_$UnauthenticatedCurrentUserModelImpl) then) =
      __$$UnauthenticatedCurrentUserModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCurrentUserModelImplCopyWithImpl<$Res>
    extends _$CurrentUserModelCopyWithImpl<$Res,
        _$UnauthenticatedCurrentUserModelImpl>
    implements _$$UnauthenticatedCurrentUserModelImplCopyWith<$Res> {
  __$$UnauthenticatedCurrentUserModelImplCopyWithImpl(
      _$UnauthenticatedCurrentUserModelImpl _value,
      $Res Function(_$UnauthenticatedCurrentUserModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedCurrentUserModelImpl
    extends UnauthenticatedCurrentUserModel {
  const _$UnauthenticatedCurrentUserModelImpl() : super._();

  @override
  String toString() {
    return 'CurrentUserModel.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedCurrentUserModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedCurrentUserModel value)
        authenticated,
    required TResult Function(UnauthenticatedCurrentUserModel value)
        unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedCurrentUserModel value)? authenticated,
    TResult? Function(UnauthenticatedCurrentUserModel value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedCurrentUserModel value)? authenticated,
    TResult Function(UnauthenticatedCurrentUserModel value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedCurrentUserModel extends CurrentUserModel {
  const factory UnauthenticatedCurrentUserModel() =
      _$UnauthenticatedCurrentUserModelImpl;
  const UnauthenticatedCurrentUserModel._() : super._();
}
