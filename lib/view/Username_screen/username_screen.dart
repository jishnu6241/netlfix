import 'package:flutter/material.dart';
import 'package:netlfix/controller/global%20widgets/user_name_card.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/databse.dart';
import 'package:netlfix/utils/image_constant.dart';

import 'package:netlfix/view/bottam_navigation_bar/bottom_navigation_bar.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.mainblack,
          title: SizedBox(
            width: 130,
            height: 40,
            child: Image.asset('assets/images/netflix-logo.png'),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: null, icon: Image.asset(ImageConstants.penbutton)),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        backgroundColor: ColorConstant.mainblack,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemCount: DbData.userNameImage.length,
              itemBuilder: (context, index) => Column(
                children: [
                  index < DbData.userNameImage.length + 1
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BottomNavbar(),
                                ));
                          },
                          child: UserNameCard(
                              name: DbData.userNameImage[index]["name"]!,
                              imgurl: DbData.userNameImage[index]["image"]!),
                        )
                      : InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Center(
                                child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstants.netflixicon))),
                            )),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ));
  }
}
