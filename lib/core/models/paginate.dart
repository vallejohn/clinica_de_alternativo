import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginate.freezed.dart';

@freezed
class Paginate with _$Paginate{
  const factory Paginate({
    @Default(15) int limit,
    QueryDocumentSnapshot<Map<String, dynamic>>? lastVisibleDocument,
  }) = _Paginate;
}