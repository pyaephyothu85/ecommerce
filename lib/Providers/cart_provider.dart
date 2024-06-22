import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier{
  final List<Products> _cart = [];
  List<Products> get cart => _cart;
  void toggleFavorite(Products product) {
    if (_cart.contains(product)){
      for(Products element in _cart){
        element.quantity++;
      }
    }
    else{
      _cart.add(product);
    }
    notifyListeners();
  }
  
  incrementQtn(int index){
    _cart[index].quantity++;
    notifyListeners();
  }
  decrementQtn(int index){
   if (cart[index].quantity <= 1){
    return;
   }
   _cart[index].quantity--;
   notifyListeners();
  }


  totalPrice(){
    double total1 = 0.0;
    for(Products element in _cart){
      total1 += element.price * element.quantity;
    }
    return total1;
  }
    static CartProvider of(BuildContext context,{
    bool listen = true,
  }){
    return Provider.of<CartProvider>( context, listen: listen,);
  }
}