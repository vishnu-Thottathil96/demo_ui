import 'package:benzy/util/image_lists.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.blue,
                  width: screenWidth,
                  height: screenHeight / 4,
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
                Positioned(
                  left: (screenWidth - screenWidth / 1 / 1.5),
                  top: screenWidth / 1.4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: screenWidth / 3,
                    height: screenHeight / 25,
                  ),
                ),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Image.asset(
                            AssetImageUrls.listviewImages[index],
                            fit: BoxFit.cover,
                          ),
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
          Row(
            children: [
              BottomContainer(screenHeight: screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

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
                  image: const AssetImage(
                    "assets/topup.png",
                  ),
                  height: screenHeight / 30,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Top Up Balance',
              )
            ],
          ),
        ),
      ),
    );
  }
}
