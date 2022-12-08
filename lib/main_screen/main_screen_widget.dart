import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:transport_sterlitamaka/theme/user_colors.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  var _currentIndex = 0;

  onSelectedBar(int index) {
    if (_currentIndex == index) return;
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF3C9C62),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: onSelectedBar,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.map),
            title: const Text('Карта'),
            selectedColor: UserColors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.directions_bus),
            title: const Text('Остановки'),
            selectedColor: UserColors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.route),
            title: const Text('Маршруты'),
            selectedColor: UserColors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text('Избранное'),
            selectedColor: UserColors.red,
          ),
        ],
      ),
    );
  }
}
