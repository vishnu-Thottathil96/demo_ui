import 'package:benzy/util/colors.dart';
import 'package:benzy/util/image_lists.dart';
import 'package:benzy/util/strings.dart';
import 'package:benzy/view/home_page/widgets/top_circles.dart';
import 'package:flutter/material.dart';

class Catogeries extends StatelessWidget {
  const Catogeries({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[0],
              backgroundColor: CustomColors.circleBackgroundColor[0],
              sizeScale: 0.5,
              title: Texts.circleTitles[0],
            ),
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[1],
              backgroundColor: CustomColors.circleBackgroundColor[1],
              sizeScale: 0.5,
              title: Texts.circleTitles[1],
            ),
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[2],
              backgroundColor: CustomColors.circleBackgroundColor[2],
              sizeScale: 0.5,
              title: Texts.circleTitles[2],
            ),
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[3],
              backgroundColor: CustomColors.circleBackgroundColor[3],
              sizeScale: 0.5,
              title: Texts.circleTitles[3],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[4],
              backgroundColor: Colors.transparent,
              sizeScale: 0.5,
              title: Texts.circleTitles[4],
            ),
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[5],
              backgroundColor: Colors.transparent,
              sizeScale: 0.5,
              title: Texts.circleTitles[5],
            ),
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[6],
              backgroundColor: Colors.transparent,
              sizeScale: 0.5,
              title: Texts.circleTitles[6],
            ),
            CircleAvatharOnTop(
              imageUrl: AssetImageUrls.topCircleAvatharImages[7],
              backgroundColor: Colors.transparent,
              sizeScale: 0.5,
              title: Texts.circleTitles[7],
            ),
          ],
        ),
      ],
    );
  }
}
