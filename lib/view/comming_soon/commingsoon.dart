import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/databse.dart';
import 'package:netlfix/view/comming_soon/widgets/custom_new_arrival_card.dart';
import 'package:netlfix/view/comming_soon/widgets/notification_custom_movie_card.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: CircleAvatar(
            backgroundColor: ColorConstant.mainred,
            radius: 15,
            child: Icon(
              Icons.notifications,
              color: ColorConstant.mainwhite,
            ),
          ),
        ),
        title: const Text(
          "Notification",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: ColorConstant.mainwhite),
        ),
        backgroundColor: ColorConstant.mainblack,
      ),
      backgroundColor: ColorConstant.mainblack,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: ColorConstant.maingrey,
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                shrinkWrap: true,
                itemCount: DbData.moviedata.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>
                    CustomNewArrivalCard(
                  newarrival: DbData.moviedata,
                  indexvalue: index,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
              ),
            ),
            ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: DbData.notificationMovieList.length,
              itemBuilder: (context, index) => NotificationCustomMovieCard(
                title: DbData.notificationMovieList[index]["title"],
                imgurl: DbData.notificationMovieList[index]["imageUrl"],
                subtitle: DbData.notificationMovieList[index]["subtitle"],
                des: DbData.notificationMovieList[index]["description"],
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            )
          ],
        ),
      )),
    );
  }
}
