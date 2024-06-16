import 'package:validators/validators.dart';

import '../widgets/textfield.dart';

class RequiredValidator<T> extends Validator<T> {
  final String? messege;
  const RequiredValidator({this.messege});
  @override
  String get indentifier => 'required';

  @override
  String? call(T? value, String? fieldName) {
    if (value == null || value is String && value.isEmpty || value is Iterable && value.isEmpty) {
      fieldName = fieldName ?? 'Field';
      return messege ?? '$fieldName is required';
    }
    return null;
  }
}

class EmailValidator extends Validator<String> {
  const EmailValidator();
  @override
  String get indentifier => 'email';
  @override
  String? call(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      fieldName = fieldName ?? 'Field';
      return null;
    }
    if (!isEmail(value)) {
      return '$fieldName is not a valid email';
    }
    return null;
  }
}

class PasswordValidator extends Validator<String> {
  const PasswordValidator();
  @override
  String get indentifier => 'password';

  @override
  String? call(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      return null;
    }
    // https: //jrlxkquhwtzqwcgmsqit.supabase.co/auth/v1/verify?token=cde3656ec90890194a157ebe7d57997a7f063ad0f1fdbec4ff0943d1&type=recovery&redirect_to=http://greet.quirkybuddy.com/password-reset
    String error = '';
    if (value.length < 8) {
      error = 'must be 8+ characters';
    } else if (!value.contains(RegExp(r'[A-Z]'))) {
      error = 'must have 1 uppercase letter';
    } else if (!value.contains(RegExp(r'[a-z]'))) {
      error = 'must have 1 lowercase letter';
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      error = 'must have 1 number';
    }
    // else if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    //   error = 'must have 1 special character';
    // }
    if (error.isNotEmpty) {
      return 'Password $error';
    }
  }
}

class MatchValidator extends Validator<String> {
  final String? matchValue;
  const MatchValidator(this.matchValue);
  @override
  String get indentifier => 'match';

  @override
  String? call(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value != matchValue) {
      fieldName = fieldName ?? 'Field';
      return '$fieldName does not match';
    }
    return null;
  }
}

class UrlValidator extends Validator<String> {
  const UrlValidator();
  @override
  String get indentifier => 'url';

  @override
  String? call(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      fieldName = fieldName ?? 'Field';
      return null;
    }
    if (!isURL(value)) {
      return '$fieldName is not a valid url';
    }
    return null;
  }
}

class MinValidator extends Validator<String> {
  final int min;
  final String? messege;
  const MinValidator({this.min = 1, this.messege});
  @override
  String get indentifier => 'min';

  @override
  String? call(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value.length < min) {
      fieldName = fieldName ?? 'Field';
      return messege ?? '$fieldName must be at least $min characters';
    }
    return null;
  }
}

class MinNumberValidator extends Validator<num> {
  final num min;
  final String? messege;
  const MinNumberValidator({this.min = 1, this.messege});
  @override
  String get indentifier => 'min-number';

  @override
  String? call(num? value, String? fieldName) {
    if (value == null) {
      return null;
    }
    if (value < min) {
      fieldName = fieldName ?? 'Field';
      return messege ?? '$fieldName must be at least $min';
    }
    return null;
  }
}

class CustomValidator<T> extends Validator<T> {
  final String? Function(T? value) validator;

  const CustomValidator({required this.validator});
  @override
  String get indentifier => 'custom';

  @override
  String? call(T? value, String? fieldName) {
    if (value == null) {
      return null;
    }
    final error = validator(value);
    if (error != null) {
      return error;
    }
  }
}
