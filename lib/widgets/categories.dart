import 'package:ecommerce/models/category.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider;
    return SizedBox(
      height: 90,
      child: ListView.separated(
        
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
        return Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(
                 categories[index].image,  
                ),
                ),
              ),

            ),
            const SizedBox(height: 5),
            Text(
              categories[index].title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            )
          
          ],
        );
      }
      ), separatorBuilder: ((context, index) => 
      const SizedBox(width: 20) ), 
      itemCount: provider.categories.length, 
      ),
    );
  }
}
