part of '../core.dart';

class FirestoreCollection {
  static CollectionReference<Map<String, dynamic>> salesReports() => FirebaseFirestore.instance.collection('sales_reports');
}