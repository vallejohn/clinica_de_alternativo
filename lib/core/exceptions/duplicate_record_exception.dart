

abstract class DocumentException implements Exception{
  final String message;

  DocumentException({required this.message});
}

class DuplicateRecordException extends DocumentException{
  DuplicateRecordException() : super(message: 'Record already exists');
}