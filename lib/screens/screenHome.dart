import 'package:flutter/material.dart';
import 'package:ui_images/screens/screenAdditionalInfo.dart';
import 'package:ui_images/screens/screenCatalogue.dart';
import 'package:ui_images/screens/screenManageStore.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentSelectedIndex = 0;
  final _pages = [
    ScreenAdditionalInfo(),
    ScreenAdditionalInfo(),
    ScreenCatalogue(),
    ScreenManageStore(),
    ScreenAdditionalInfo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.margin_outlined),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
