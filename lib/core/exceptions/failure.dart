import 'package:clinica_de_alternativo/core/exceptions/duplicate_record_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure{
  const factory Failure.firebase(FirebaseException firebaseException) = _Firebase;
  const factory Failure.documentException(DocumentException docException) = _DocumentException;
}