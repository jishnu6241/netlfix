import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/databse.dart';
import 'package:netlfix/utils/image_constant.dart';

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
                  index < DbData.userNameImage.length
                      ? Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage(
                                    DbData.userNameImage[index]["image"]!,
                                  ),
                                  fit: BoxFit.cover),
                              color: ColorConstant.mainblack),
                        )
                      : SizedBox(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/addbutton.png"))),
                          )),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    DbData.userNameImage[index]["name"]!,
                    style: const TextStyle(color: ColorConstant.mainwhite),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
