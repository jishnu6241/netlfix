import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';

class ScearchScreenCard extends StatelessWidget {
  const ScearchScreenCard(
      {super.key, required this.title, required this.imageUrl});
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.maingrey,
      child: Row(
        children: [
          SizedBox(
            height: 76,
            width: 146,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(title),
          const Spacer(),
          const Icon(Icons.play_circle_outline_outlined),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
