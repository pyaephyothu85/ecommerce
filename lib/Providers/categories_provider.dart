// import 'package:flutter/material.dart';
// import '../models/category.dart';
// import '../services/api_service.dart';

// class CategoryProvider with ChangeNotifier {
//   List<Category> _categories = [];
//   bool _loading = false;

//   List<Category> get categories => _categories;
//   bool get loading => _loading;

//   void fetchCategories() async {
//     _loading = true;
//     notifyListeners();

//     try {
//       _categories = await ApiService().fetchCategories();
//     } catch (e) {
//       // Handle error
//     }

//     _loading = false;
//     notifyListeners();
//   }
// }
