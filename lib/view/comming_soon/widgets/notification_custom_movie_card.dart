import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';

class NotificationCustomMovieCard extends StatelessWidget {
  const NotificationCustomMovieCard(
      {super.key,
      required this.title,
      this.des,
      required this.imgurl,
      required this.subtitle});
  final String imgurl;
  final String title;
  final String? des;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 193,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgurl), fit: BoxFit.cover)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 24,
                    color: ColorConstant.mainwhite,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Remind me",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.mainwhite),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: ColorConstant.mainwhite,
                    size: 24,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.mainwhite),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                des ?? "",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Steamy. Soapy . Slow Burn . Suspenseful . Teen . Mystery''',
                style: TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
