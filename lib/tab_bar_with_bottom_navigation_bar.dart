import 'package:flutter/material.dart';
import 'package:scaler_bottom_navigation_bar/helper.dart';

class TabBarWithBottomNavigationBar extends StatefulWidget {
  const TabBarWithBottomNavigationBar({Key? key});

  @override
  State<TabBarWithBottomNavigationBar> createState() =>
      _TabBarWithBottomNavigationBar();
}

class _TabBarWithBottomNavigationBar
    extends State<TabBarWithBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Widget> _pages = [
    Home(),
    Search(),
    Friends(),
    Balance(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Bottom Navigation Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar with Bottom Navigation Bar'),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 10,
          iconSize: 30,
          mouseCursor: MouseCursor.defer,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _tabController.index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Balance',
            ),
          ],
        ),
        bottomSheet: Container(
          height: 50,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.account_balance),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
