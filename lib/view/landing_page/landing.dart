import 'package:benzy/util/colors.dart';
import 'package:benzy/util/image_lists.dart';
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

  Widget _buildBottomNavItem(String imagePath, int index) {
    return IconButton(
      icon: Image.asset(
        imagePath,
        width: 25,
        height: 25,
        color: _currentIndex == index
            ? CustomColors.selectedColorBottomBar
            : CustomColors.greyColor,
      ),
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.scafoldBackgroundColor,
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
          color: CustomColors.whiteColor,
          surfaceTintColor: CustomColors.whiteColor,
          shadowColor: CustomColors.regularTextColor,
          height: ScreenSize.height(context) / 15,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomNavItem(AssetImageUrls.bottomBarImages[0], 0),
              _buildBottomNavItem(AssetImageUrls.bottomBarImages[1], 1),
              _buildBottomNavItem(AssetImageUrls.bottomBarImages[2], 2),
              _buildBottomNavItem(AssetImageUrls.bottomBarImages[3], 3),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {},
          child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // circular shape
                gradient: LinearGradient(
                  colors: [
                    CustomColors.floatingActionButtonColor1,
                    CustomColors.floatingActionButtonColor2,
                  ],
                ),
              ),
              child: Transform.scale(
                scale: 0.5,
                child: Image.asset(
                  AssetImageUrls.floatingButtonIcon,
                ),
              )),
        ));
  }
}
