import 'package:benzy/util/colors.dart';
import 'package:benzy/util/image_lists.dart';
import 'package:benzy/util/strings.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 3),
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: screenHeight / 35,
                  width: screenWidth / 17,
                  child: Image(
                    image: AssetImage(AssetImageUrls.menuIcon),
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          Texts.companyName,
          style: TextStyle(
              fontSize: 20,
              color: CustomColors.whiteColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          Texts.agentCode,
          style: TextStyle(color: CustomColors.whiteColor, fontSize: 12),
        ),
        const SizedBox(height: 8),
        IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            height: screenHeight / 30,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    Texts.mainBalance,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: CustomColors.regularTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: VerticalDivider(
                    color: CustomColors.regularTextColor,
                    thickness: 1.0,
                    width: 10.0,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: CustomColors.regularTextColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
