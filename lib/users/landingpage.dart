import 'package:flutter/material.dart';
import 'package:merchshop/constants.dart';
import 'package:merchshop/users/cartpage.dart';
import 'package:merchshop/users/homepage.dart';
import 'package:merchshop/users/profilepage.dart';
import 'package:merchshop/users/transaction.dart';
import 'package:merchshop/users/wishlistpage.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;

  List<Widget> _container = [
    new HomePage(),
    new WishlistPage(),
    new CartPage(),
    new Transaction(),
    new ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    var fixed;
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Pallete.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Pallete.bg3,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite_border,
              color: Pallete.bg3,
            ),
            icon: new Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Pallete.bg3,
            ),
            icon: new Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz_sharp,
              color: Pallete.bg3,
            ),
            icon: new Icon(
              Icons.swap_horiz_sharp,
              color: Colors.grey,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person_outline,
              color: Pallete.bg3,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
