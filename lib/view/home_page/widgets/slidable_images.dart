import 'package:benzy/util/colors.dart';
import 'package:benzy/util/image_lists.dart';
import 'package:flutter/material.dart';

class SlidableImages extends StatelessWidget {
  const SlidableImages({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight / 4,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index != 0 ? 0 : screenWidth * 0.06,
                right: index != AssetImageUrls.listviewImages.length - 1
                    ? 0
                    : screenWidth * 0.06),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(
                    AssetImageUrls.listviewImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'More details',
                      style: TextStyle(
                          color: CustomColors.largeBlueContainerColor2),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemCount: AssetImageUrls.listviewImages.length,
      ),
    );
  }
}
