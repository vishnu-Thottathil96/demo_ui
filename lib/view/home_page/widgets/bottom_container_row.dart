import 'package:benzy/view/home_page/widgets/bottom_container.dart';
import 'package:flutter/material.dart';

class BottomContainerRow extends StatelessWidget {
  const BottomContainerRow({
    super.key,
    required this.screenHeight,
    required this.imageUrl1,
    required this.text1,
    required this.imageUrl2,
    required this.text2,
  });

  final double screenHeight;
  final String imageUrl1;
  final String text1;
  final String imageUrl2;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BottomContainer(
          screenHeight: screenHeight,
          imageUrl: imageUrl1,
          text: text1,
        ),
        const SizedBox(
          width: 15,
        ),
        BottomContainer(
          screenHeight: screenHeight,
          imageUrl: imageUrl2,
          text: text2,
        ),
      ],
    );
  }
}
