import 'package:flutter/material.dart';
import 'package:scaler_bottom_navigation_bar/hiding_bottom_navigation_bar_on_scroll.dart';
import 'package:scaler_bottom_navigation_bar/properties.dart';
import 'package:scaler_bottom_navigation_bar/tab_bar_with_bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HidingOnScroll(),
    );
  }
}
