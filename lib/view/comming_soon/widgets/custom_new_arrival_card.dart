import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';

class CustomNewArrivalCard extends StatelessWidget {
  const CustomNewArrivalCard(
      {super.key, required this.newarrival, required this.indexvalue});
  final List newarrival;
  final int indexvalue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 76,
          width: 146,
          child: Image.network(
            newarrival[indexvalue]["imageurl"],
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              newarrival[indexvalue]["movieName"],
              style:
                  const TextStyle(color: ColorConstant.mainwhite, fontSize: 18),
            ),
            Text(
              newarrival[indexvalue]["title"],
              style:
                  const TextStyle(color: ColorConstant.mainwhite, fontSize: 15),
            ),
            Text(
              newarrival[indexvalue]["date"],
              style: TextStyle(
                  color: ColorConstant.mainwhite.withOpacity(.6), fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
