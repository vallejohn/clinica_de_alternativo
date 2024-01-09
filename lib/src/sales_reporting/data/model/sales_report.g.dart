// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesReportImpl _$$SalesReportImplFromJson(Map<String, dynamic> json) =>
    _$SalesReportImpl(
      id: json['id'] as String?,
      transactionId: json['transactionId'] as String?,
      productName: json['productName'] as String? ?? '',
      transactionDate: json['transactionDate'] as String? ?? '',
      quantitySold: json['quantitySold'] as int? ?? 0,
    );

Map<String, dynamic> _$$SalesReportImplToJson(_$SalesReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'productName': instance.productName,
      'transactionDate': instance.transactionDate,
      'quantitySold': instance.quantitySold,
    };
