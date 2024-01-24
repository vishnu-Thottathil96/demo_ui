import 'package:benzy/util/colors.dart';
import 'package:benzy/util/image_lists.dart';
import 'package:benzy/util/screen_size.dart';
import 'package:benzy/util/strings.dart';
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
                child: Column(
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
                      style: TextStyle(
                          color: CustomColors.whiteColor, fontSize: 12),
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
                              padding:
                                  const EdgeInsets.symmetric(vertical: 7.0),
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
                ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatharOnTop(
                            imageUrl: AssetImageUrls.topCircleAvatharImages[0],
                            backgroundColor:
                                CustomColors.circleBackgroundColor[0],
                            sizeScale: 0.5,
                            title: Texts.circleTitles[0],
                          ),
                          CircleAvatharOnTop(
                            imageUrl: AssetImageUrls.topCircleAvatharImages[1],
                            backgroundColor:
                                CustomColors.circleBackgroundColor[1],
                            sizeScale: 0.5,
                            title: Texts.circleTitles[1],
                          ),
                          CircleAvatharOnTop(
                            imageUrl: AssetImageUrls.topCircleAvatharImages[2],
                            backgroundColor:
                                CustomColors.circleBackgroundColor[2],
                            sizeScale: 0.5,
                            title: Texts.circleTitles[2],
                          ),
                          CircleAvatharOnTop(
                            imageUrl: AssetImageUrls.topCircleAvatharImages[3],
                            backgroundColor:
                                CustomColors.circleBackgroundColor[3],
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
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
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
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: (screenWidth - screenWidth / 1.2) / 2,
          ),
          child: Column(
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
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}

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
