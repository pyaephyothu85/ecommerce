import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/widgets/constrast.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final Products product;
  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // List<Products> myproducts = [];
    // Products eachproduct;
    // var widget;
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'hello',style: TextStyle(
            color: Colors.black
            
          ),
        ),
        
      ],
    );
  }
}
