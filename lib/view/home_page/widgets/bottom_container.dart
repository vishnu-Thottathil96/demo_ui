import 'package:benzy/util/colors.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.screenHeight,
    required this.imageUrl,
    required this.text,
  });

  final double screenHeight;
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  child: Image(
                    image: AssetImage(
                      imageUrl,
                    ),
                    height: screenHeight / 35,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  style: TextStyle(color: CustomColors.regularTextColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
