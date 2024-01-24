import 'package:benzy/util/screen_size.dart';
import 'package:benzy/view/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainPageContent();
  }
}

class MainPageContent extends StatefulWidget {
  const MainPageContent({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainPageContentState createState() => _MainPageContentState();
}

class _MainPageContentState extends State<MainPageContent> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: ScreenSize.height(context) / 15,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBottomNavItem(Icons.home, 0),
            _buildBottomNavItem(Icons.search, 1),
            _buildBottomNavItem(Icons.favorite, 2),
            _buildBottomNavItem(Icons.person, 3),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(icon),
      color: _currentIndex == index ? Colors.blue : Colors.black,
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
