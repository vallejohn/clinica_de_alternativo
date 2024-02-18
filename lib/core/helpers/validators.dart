import 'package:formz/formz.dart';

typedef StringFormzInput = FormzInput<String, String>;

class EmptyFieldValidator extends StringFormzInput{
  EmptyFieldValidator.pure(this._errorMessage) : super.pure('');
  EmptyFieldValidator.dirty(String? value, {String? errorMessage}) : _errorMessage = errorMessage, super.dirty(value?? '');

  final String? _errorMessage;

  @override
  String? validator(String value) {
    if(value.isEmpty){
      return _errorMessage?? 'Field cannot be empty';
    }
    return null;
  }
}

class NumberFieldValidator extends StringFormzInput{
  NumberFieldValidator.pure(this._errorMessage, this._ifZeroValueError) : super.pure('');
  NumberFieldValidator.dirty(String? value, {String? errorMessage, String? ifZeroValueError})
      : _errorMessage = errorMessage, _ifZeroValueError = ifZeroValueError, super.dirty(value?? '');

  final String? _errorMessage;
  final String? _ifZeroValueError;

  @override
  String? validator(String value) {
    if(value.isEmpty){
      return _errorMessage?? 'Field cannot be empty';
    }
    if(double.parse(value.toString()) == 0){
      return _ifZeroValueError?? 'Enter value above zero';
    }
    return null;
  }
}