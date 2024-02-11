part of '../core.dart';

class FirestoreCollection {
  static final _logger = AppLogger('FirestoreCollection');
  static CollectionReference<Map<String, dynamic>> salesReports() {
    _logger.i('Accessing salesReports collection');
    return FirebaseFirestore.instance.collection('sales_reports');
  }

  static CollectionReference<Map<String, dynamic>> products() {
    _logger.i('Accessing products collection');
    return FirebaseFirestore.instance.collection('products');
  }

  static CollectionReference<Map<String, dynamic>> productTypes() {
    _logger.i('Accessing productTypes collection');
    return FirebaseFirestore.instance.collection('product_types');
  }

  static CollectionReference<Map<String, dynamic>> profileInformation() {
    _logger.i('Accessing profileInformation collection');
    return FirebaseFirestore.instance.collection('profile_information');
  }

  static CollectionReference<Map<String, dynamic>> branch() {
    _logger.i('Accessing branch collection');
    return FirebaseFirestore.instance.collection('branches');
  }

  static CollectionReference<Map<String, dynamic>> roles() {
    _logger.i('Accessing roles collection');
    return FirebaseFirestore.instance.collection('roles');
  }

  static CollectionReference<Map<String, dynamic>> modules() {
    _logger.i('Accessing modules collection');
    return FirebaseFirestore.instance.collection('modules');
  }
}
