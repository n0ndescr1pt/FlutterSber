

import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/ColorSelect.dart';
import 'package:sberbank_project/resources/TextStyles.dart';

// ignore: must_be_immutable
class CardViews extends StatelessWidget {
  String title;
  String description;
  String subDescription;
  AssetImage icon;

  CardViews(this.title, this.description, this.subDescription, this.icon,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return cardView();
  }

  Widget cardView() {
    return Container(
      margin: const EdgeInsets.only(right: 4, left: 4, bottom: 8, top: 8),
      width: 216,
      height: 130,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: ColorSelect.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: ColorSelect.shadowColor,
            blurRadius: 12,
            blurStyle: BlurStyle.normal,
            offset: Offset(0, 8),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: ColorSelect.shadowDarkColor,
            blurRadius: 8,
            blurStyle: BlurStyle.normal,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
            child: Row(
              children: [
                Image(
                  image: icon,
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyleSelect.cardTitle
                )
              ],
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  description,
                  style: const TextStyle(
                    color: ColorSelect.blackColor,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.41,
                    
                  ),
                ),
                // ---
                Text(
                  subDescription,
                  style: TextStyle(
                    color: ColorSelect.blackWithOpacity50,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.41,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}