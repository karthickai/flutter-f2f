import 'package:flutter_f2f/core/constants/enum.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');
  const ConfirmedPassword.dirty({@required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordValidationError validator(String value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}
