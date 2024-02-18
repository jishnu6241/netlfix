import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';

class CustomMovieCard extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final bool isCircle;
  final List<String> imageList;
  final bool isOptinVisiblel;
  const CustomMovieCard(
      {super.key,
      required this.title,
      this.height = 177,
      this.width = 103,
      this.isCircle = false,
      required this.imageList,
      this.isOptinVisiblel = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height,
              child: ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imageList[index]),
                          fit: BoxFit.cover),
                      color: ColorConstant.mainred,
                      shape: isCircle == true
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                        visible: isOptinVisiblel,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 5,
                              color: ColorConstant.maingrey,
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 5,
                                width: 40,
                                color: ColorConstant.mainred,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                height: 30,
                                color: ColorConstant.mainblack,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.info_outline_rounded,
                                      color: ColorConstant.mainwhite,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: ColorConstant.mainwhite,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
