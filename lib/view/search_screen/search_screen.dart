import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/databse.dart';
import 'package:netlfix/view/search_screen/widgets/search_screen_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            color: ColorConstant.maingrey,
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: ColorConstant.mainwhite,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Seaech for a show, movie, genre, e.t.c.',
                  style: TextStyle(color: ColorConstant.mainwhite),
                ),
                Spacer(),
                Icon(
                  Icons.mic,
                  color: ColorConstant.mainwhite,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'TOP SEARCH',
              style: TextStyle(
                  color: ColorConstant.mainwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: DbData.serachimg.length,
                itemBuilder: (context, index) => ScearchScreenCard(
                      imageUrl: DbData.serachimg[index]["imageurl"].toString(),
                      title: DbData.serachimg[index]["title"].toString(),
                    )),
          ),
        ],
      ),
    );
  }
}
