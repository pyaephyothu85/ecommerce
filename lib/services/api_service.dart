// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/category.dart';

// class ApiService {
//   static const String apiUrl = 'http://localhost:8000/api/productcategories';

//   Future<List<Category>> fetchCategories() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> body = jsonDecode(response.body);
//       return body.map((dynamic item) => Category.fromJson(item)).toList();
//     } else {
//       throw Exception('Failed to load categories');
//     }
//   }
// }
