import 'package:ecommerce/models/cart_item.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/product_screen.dart';
import 'package:ecommerce/widgets/bottomnavigation.dart';
import 'package:ecommerce/widgets/cart_tile.dart';
import 'package:ecommerce/widgets/check_out_box.dart';
import 'package:ecommerce/widgets/constrast.dart';
import 'package:ecommerce/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreenState extends StatefulWidget {
  const CartScreenState({super.key});

  @override
  State<CartScreenState> createState() => __CartScreenStateState();
}

class __CartScreenStateState extends State<CartScreenState> {
  bool _isDarkMode = false;
  int _itemCount = 20; // Example item count
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentSlide = 0; // Added for initialization

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: kcontentColor,
        centerTitle: true,
        title: const Text(
          'My cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> const HomeScreen(),
          ),
          );
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: Icon(Icons.chevron_left),
          ),
        ),
      ),
      bottomSheet: const CheckOutBox(
      items: CartItem, item: [],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => CartTile(
          item: times[index],
          onRemove: () {
            if (times[index].quantity != 1) {
              setState(() {
                times[index].quantity--;
              });
            }
          },
          onAdd: () {
            setState(() {
              times[index].quantity++;
            });
          }, onDelete: () {  },
        ),
        separatorBuilder: ((context, index) => const SizedBox(height: 20)),
        itemCount: times.length,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        isDarkMode: _isDarkMode,
      ),
    );
  }
}

