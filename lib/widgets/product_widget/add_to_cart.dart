import 'package:ecommerce/screens/cart_screen.dart';
import 'package:ecommerce/widgets/constrast.dart';
import 'package:flutter/material.dart';

class AddtoCart extends StatefulWidget {
  final Function() onAdd;
  final Function() onRemove;

  const AddtoCart({
    Key? key,
    required this.onAdd,
    required this.onRemove, required int currentNumber,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddtoCartState createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  int currentNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kcontentColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                    onPressed: () {
                      setState(() {
                        if (currentNumber > 0) {
                          currentNumber--;
                          widget.onRemove(); // Call the provided onRemove callback
                        }
                      });
                    },
                    iconSize: 18,
                    icon: const Icon(
                      Icons.remove_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    currentNumber.toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentNumber++;
                        widget.onAdd(); // Call the provided onAdd callback
                      });
                    },
                    iconSize: 18,
                    icon: const Icon(
                      Icons.add_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreenState()));
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue, // assuming kprimaryColor is not defined
                  borderRadius: BorderRadius.circular(60),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: const Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

