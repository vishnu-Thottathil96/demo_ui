import 'package:benzy/view/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                _navigateTo(0);
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                _navigateTo(1);
              },
            ),
            const SizedBox(), // This is needed for the notch to appear
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                _navigateTo(2);
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                _navigateTo(3);
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          // Implement the action for the floating button
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _navigateTo(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
