import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/image_constant.dart';
import 'package:netlfix/view/HomeScreen/widgets/custom_movie_cards.dart/custom_movie_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstants.homeImg1),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(ImageConstants.netflixicon),
                    const Text(
                      'TV Show',
                      style: TextStyle(
                          color: ColorConstant.mainwhite, fontSize: 15),
                    ),
                    const Text(
                      'Movie',
                      style: TextStyle(
                          color: ColorConstant.mainwhite, fontSize: 15),
                    ),
                    const Text(
                      'My List',
                      style: TextStyle(
                          color: ColorConstant.mainwhite, fontSize: 15),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageConstants.topo10),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '#2 In India Today',
                      style: TextStyle(
                          color: ColorConstant.mainwhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: ColorConstant.mainwhite,
                      size: 30,
                    ),
                    Text(
                      'My List',
                      style: TextStyle(
                          color: ColorConstant.mainwhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: ColorConstant.mainwhite,
                  ),
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 45,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Play',
                            style: TextStyle(
                                color: ColorConstant.mainblack,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: ColorConstant.mainwhite,
                      size: 30,
                    ),
                    Text(
                      'Info',
                      style: TextStyle(
                          color: ColorConstant.mainwhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomMovieCard(title: "Previews")
        ],
      ),
    );
  }
}
