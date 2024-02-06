// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesReportImpl _$$SalesReportImplFromJson(Map<String, dynamic> json) =>
    _$SalesReportImpl(
      id: json['id'] as String?,
      transactionId: json['transactionId'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      transactionDate: json['transactionDate'],
      creationDate: json['creationDate'],
      reportedBy: json['reportedBy'] == null
          ? null
          : ProfileInformation.fromJson(
              json['reportedBy'] as Map<String, dynamic>),
      quantitySold: json['quantitySold'] as int? ?? 0,
    );

Map<String, dynamic> _$$SalesReportImplToJson(_$SalesReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'product': instance.product,
      'transactionDate': instance.transactionDate,
      'creationDate': instance.creationDate,
      'reportedBy': instance.reportedBy,
      'quantitySold': instance.quantitySold,
    };
