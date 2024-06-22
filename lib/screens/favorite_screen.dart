
import 'package:ecommerce/widgets/constrast.dart';

import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        backgroundColor: kcontentColor,
        title: Text('Your Favorite Items'),
        ),
    
     
    );
  }
}