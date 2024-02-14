import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/view/HomeScreen/homescreen.dart';
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
    const Center(child: Text('Comming soon')),
    const Center(child: Text('Downolad')),
    const Center(child: Text('More')),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainblack,
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.mainwhite,
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
