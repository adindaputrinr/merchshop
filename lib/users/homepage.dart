import 'package:flutter/material.dart';
import 'package:merchshop/constants.dart';
import 'package:merchshop/users/categoriespage.dart';
import 'package:merchshop/users/depanpage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search, color: Colors.black),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: Colors.white),
              ),
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        backgroundColor: Pallete.bg1,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Pallete.bg3,
          labelColor: Pallete.bg3,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Categories'),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          DepanPage(),
          CategoriesPage(),
        ],
      ),
    );
  }
}
