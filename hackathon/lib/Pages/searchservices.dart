import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  searchByName(String searchField) {
    return FirebaseFirestore.instance
        .collection('data')
        .where('searchKey',
            isEqualTo: searchField.substring(0, 1).toUpperCase()).get();
  }
}
