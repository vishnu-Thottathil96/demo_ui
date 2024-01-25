import 'package:benzy/util/image_lists.dart';
import 'package:benzy/view/home_page/widgets/bottom_container_row.dart';
import 'package:flutter/material.dart';

class BottomCards extends StatelessWidget {
  const BottomCards({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BottomContainerRow(
          screenHeight: screenHeight,
          imageUrl1: AssetImageUrls.topupIcon,
          text1: ' Top Up Balance ',
          imageUrl2: AssetImageUrls.calenderIcon,
          text2: '  Travel Calender  ',
        ),
        SizedBox(height: screenHeight / 35),
        BottomContainerRow(
          screenHeight: screenHeight,
          imageUrl1: AssetImageUrls.noticeBoardIcon,
          text1: 'Notice Board',
          imageUrl2: AssetImageUrls.handIcon,
          text2: 'Hold Iteneraries',
        ),
        SizedBox(height: screenHeight / 35),
        BottomContainerRow(
          screenHeight: screenHeight,
          imageUrl1: AssetImageUrls.salesIcon,
          text1: 'Sales',
          imageUrl2: AssetImageUrls.myAccountIcon,
          text2: 'My Account',
        ),
        SizedBox(height: screenHeight / 35),
      ],
    );
  }
}
