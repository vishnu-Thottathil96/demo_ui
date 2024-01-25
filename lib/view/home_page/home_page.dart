import 'package:benzy/util/colors.dart';
import 'package:benzy/util/screen_size.dart';
import 'package:benzy/view/home_page/widgets/bottom_cards.dart';
import 'package:benzy/view/home_page/widgets/catogeries.dart';
import 'package:benzy/view/home_page/widgets/slidable_images.dart';
import 'package:benzy/view/home_page/widgets/top_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);

    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    CustomColors.largeBlueContainerColor1,
                    CustomColors.largeBlueContainerColor2
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                width: screenWidth,
                height: screenHeight / 4,
                child: TopSection(
                    screenHeight: screenHeight, screenWidth: screenWidth),
              ),
              Positioned(
                top: screenHeight / 5.2,
                left: (screenWidth - screenWidth / 1.2) / 2,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: screenWidth / 1.2,
                    height: screenHeight / 5.5,
                  ),
                ),
              ),
              Positioned(
                top: screenHeight / 6.2,
                left: (screenWidth - screenWidth / 1.2) / 2,
                child: SizedBox(
                  width: screenWidth / 1.2,
                  height: screenHeight / 5.5,
                  child: const Catogeries(),
                ),
              ),
            ],
          ),
        ),
        SlidableImages(screenHeight: screenHeight, screenWidth: screenWidth),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: (screenWidth - screenWidth / 1.2) / 2,
          ),
          child: BottomCards(screenHeight: screenHeight),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
