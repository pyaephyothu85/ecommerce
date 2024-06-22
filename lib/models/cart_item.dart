import 'package:ecommerce/models/product.dart';

class CartItem {
 int quantity;
 Products product;

 CartItem({
  required this.quantity,
  required this.product,
 });
}

List<CartItem> times = [
  CartItem(quantity: 2, product: product[0]),
  CartItem(quantity: 1, product: product[1]),
];

