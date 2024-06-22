import 'package:ecommerce/models/cart_item.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/widgets/constrast.dart';
import 'package:flutter/material.dart';

class CartTile extends StatefulWidget {
  final CartItem item;
  final Function() onRemove;
   final Function() onAdd;

 
   
  const CartTile({super.key, required this.item, required this.onRemove, required this.onAdd, required Null Function() onDelete });

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  get onDelete => null;


  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      color: kcontentColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(widget.item.product.image),
                  ),
                  const SizedBox(width: 10, height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.product.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.item.product.category,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '\$${widget.item.product.price}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Column(children: [
                IconButton(onPressed: (){
                 
                },icon: 
                const Icon(Icons.delete, 
                color: Colors.red,
                size: 20,
                ),
                ),
                 Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: widget.onRemove,
                    iconSize: 18,
                    icon: const Icon(
                      Icons.remove_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                   widget.item.quantity.toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: widget.onAdd,
                    iconSize: 18,
                    icon: const Icon(
                      Icons.add_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              
            ),
            
            

              ],))
          ],
        );
  }
}