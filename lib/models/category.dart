class Category {
  final String title;
  final String image;
  
  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Shoes", image: "assets/shoes.jpg"),
  Category(title: "beauty", image: "assets/cos3.jpg"),
  Category(title: "Phone", image: "assets/phone.jpg"),
  Category(title: "Backpack", image: "assets/bag.jpg"),
  Category(title: "Speakers", image: "assets/speaker1.jpg"),
  Category(title: 'Speakers', image: "assets/speaker1.jpg"),

];

// class Category {
//   final int id;
//   final String name;

//   Category({required this.id, required this.name});

//   factory Category.fromJson(Map<String, dynamic> json) {
//     return Category(
//       id: json['id'],
//       name: json['name'],
//     );
//   }
// }
