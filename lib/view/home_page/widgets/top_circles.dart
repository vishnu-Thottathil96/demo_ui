import 'package:benzy/util/colors.dart';
import 'package:flutter/material.dart';

class CircleAvatharOnTop extends StatelessWidget {
  const CircleAvatharOnTop({
    super.key,
    required this.backgroundColor,
    required this.imageUrl,
    required this.sizeScale,
    required this.title,
  });
  final String imageUrl;
  final Color backgroundColor;
  final double sizeScale;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: backgroundColor,
          child: ClipOval(
            child: Transform.scale(
              scale: sizeScale,
              child: Image.asset(
                imageUrl,
                width: 54.0,
                height: 54.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(color: CustomColors.regularTextColor),
        )
      ],
    );
  }
}
