import 'package:flutter/material.dart';
import 'package:netlfix/controller/global%20widgets/user_name_card.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/databse.dart';
import 'package:netlfix/utils/image_constant.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainblack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 131,
                child: ListView.separated(
                    itemCount: DbData.userNameImage.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemBuilder: (context, index) => UserNameCard(
                          name: DbData.userNameImage[index]["name"]!,
                          imgurl: DbData.userNameImage[index]["image"]!,
                          height: index == 0 ? 100 : 70,
                          width: index == 0 ? 100 : 70,
                        )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Center(
                      child: Image.asset(
                        ImageConstants.penbutton,
                        color: ColorConstant.mainwhite,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Manage Profiles',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.mainwhite,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: const Color(0xff1A1A1A),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.sms,
                          color: ColorConstant.mainwhite,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tell Friends about Netflix',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.mainwhite,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: ColorConstant.mainwhite,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Terms & Condition',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: ColorConstant.maingrey,
                        fontWeight: FontWeight.normal,
                        color: ColorConstant.maingrey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            color: ColorConstant.mainblack,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.mainwhite,
                              borderRadius: BorderRadius.circular(2)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Center(
                                child: Text(
                              "Copy Link",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.mainblack,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                              child: Image.asset('assets/images/whatsapp.png')),
                          const VerticalDivider(),
                          Expanded(
                              child: Image.asset('assets/images/facebook.png')),
                          const VerticalDivider(),
                          Expanded(
                              child: Image.asset('assets/images/gmail.png')),
                          const VerticalDivider(),
                          const Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: ColorConstant.mainwhite,
                              ),
                              Text(
                                'More',
                                style:
                                    TextStyle(color: ColorConstant.mainwhite),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset('assets/images/tik.png'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'My List',
                    style: TextStyle(
                        color: ColorConstant.mainwhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              const Divider(
                color: ColorConstant.maingrey,
              ),
              const Text(
                'App Settings',
                style: TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              const Text(
                'Account',
                style: TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              const Text(
                'Help',
                style: TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              const Text(
                'Sign Out',
                style: TextStyle(
                    color: ColorConstant.mainwhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
