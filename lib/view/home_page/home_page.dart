import 'package:benzy/util/image_lists.dart';
import 'package:benzy/util/screen_size.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    double bottomFactor = 35 / screenHeight; // Adjust this factor as needed

    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
                width: screenWidth,
                height: screenHeight / 4,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.abc)],
                    ),
                    const Text('data'),
                    const Text('data'),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: screenWidth / 2,
                      height: screenHeight / 30,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenHeight / 5.5,
                left: (screenWidth - screenWidth / 1.2) / 2,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: screenWidth / 1.2,
                    height: screenHeight / 5,
                  ),
                ),
              ),
              // Positioned(
              //   left: (screenWidth - screenWidth / 1 / 1.5),
              //   // top: (screenHeight / 4) + (screenHeight / 3) - screenHeight / 3,
              //   bottom: screenHeight * bottomFactor,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.red,
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     width: screenWidth / 3,
              //     height: screenHeight / 25,
              //   ),
              // ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: (screenWidth - screenWidth / 1.2) / 2,
          ),
          child: SizedBox(
            height: screenHeight / 4,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                        AssetImageUrls.listviewImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50.0, bottom: 10),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('More details'),
                      ),
                    )
                  ],
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
        const SizedBox(height: 5)
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
