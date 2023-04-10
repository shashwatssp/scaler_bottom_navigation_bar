import 'package:flutter/material.dart';
import 'package:scaler_bottom_navigation_bar/helper.dart';
import 'package:scaler_bottom_navigation_bar/scroll_to_hide_widget.dart';

class HideOnScroll extends StatefulWidget {
  const HideOnScroll({super.key});

  @override
  State<HideOnScroll> createState() => _HideOnScroll();
}

class _HideOnScroll extends State<HideOnScroll> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int _currentIndex = 0;
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
          title: Text('Bottom Navigation Bar'),
        ),
        body: ListView.builder(
          controller: controller,
          itemCount: 25,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Scaler',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        bottomNavigationBar: ScrollToHideWidget(
          controller: controller,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 10,
            iconSize: 30,
            mouseCursor: MouseCursor.defer,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
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
        ),
      ),
    );
  }
}
