import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/favorite_screen.dart';

import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            icon: const Icon(Icons.chevron_left),
          ),
          const Spacer(),
          IconButton(onPressed: (){},
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(15),
          ),
           icon: const Icon(Icons.shopping_cart),
           ),
           const SizedBox(height: 5),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FavoriteScreen()), );
             

            },
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(15),
          ),
           icon: const Icon(Icons.favorite),
           ),

        ],
      ),
    );
  }
}

