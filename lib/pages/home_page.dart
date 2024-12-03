import 'package:flutter/material.dart';
import 'package:sneakx/components/bottom_navbar.dart';
import 'package:sneakx/components/my_drawer.dart';
import 'package:sneakx/pages/shope_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is set to contorl the navigation bar
  int _selectedindex = 0;

  // this method will update our selected index
  // when the user tap on the navigation bar
  void navigationBottomBar( int index){
    setState(() {
      _selectedindex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopePage(),

  // cart page
   const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) =>
            IconButton(
              onPressed: () {Scaffold.of(context).openDrawer();},
              icon: const Icon(
                Icons.menu,
              ),
            ),
        ),
    ),
      drawer: MyDrawer(),
      body: _pages[_selectedindex],
    );
  }
}

