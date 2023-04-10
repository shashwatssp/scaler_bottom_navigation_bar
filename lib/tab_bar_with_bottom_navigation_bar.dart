import 'package:flutter/material.dart';

class TabBar extends StatefulWidget {
  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar with BottomNavigationBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TabBar with BottomNavigationBar'),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Home')),
            Center(child: Text('Search')),
            Center(child: Text('Friends')),
            Center(child: Text('Balance')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _tabController.index,
          onTap: (int index) {
            setState(() {
              _tabController.index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friends'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Balance'),
          ],
        ),
      ),
    );
  }
}
