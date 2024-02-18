import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/view/HomeScreen/homescreen.dart';
import 'package:netlfix/view/comming_soon/commingsoon.dart';
import 'package:netlfix/view/download_screen/download_screen.dart';
import 'package:netlfix/view/menu_screen/menu_screen.dart';
import 'package:netlfix/view/search_screen/search_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CommingSoonScreen(),
    const DownloadScreen(),
    const MenuScreen(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainblack,
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.mainred,
          unselectedItemColor: ColorConstant.maingrey,
          backgroundColor: ColorConstant.mainblack,
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;

            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'COMING SOON'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_sharp), label: 'DOWNLOAD'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'MORE')
          ]),
    );
  }
}
