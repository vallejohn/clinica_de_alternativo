part of '../core.dart';

class FirestoreCollection {
  static CollectionReference<Map<String, dynamic>> salesReports() => FirebaseFirestore.instance.collection('sales_reports');
  static CollectionReference<Map<String, dynamic>> products() => FirebaseFirestore.instance.collection('products');
  static CollectionReference<Map<String, dynamic>> productTypes() => FirebaseFirestore.instance.collection('product_types');
  static CollectionReference<Map<String, dynamic>> profileInformation() => FirebaseFirestore.instance.collection('profile_information');
  static CollectionReference<Map<String, dynamic>> branch() => FirebaseFirestore.instance.collection('branches');
  static CollectionReference<Map<String, dynamic>> roles() => FirebaseFirestore.instance.collection('roles');
  static CollectionReference<Map<String, dynamic>> modules() => FirebaseFirestore.instance.collection('modules');
}