import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/TextStyles.dart';

// ignore: must_be_immutable
class InfoTabs extends StatelessWidget {
  String title;
  String subTitle;

  InfoTabs(this.title,this.subTitle,{super.key});

  @override
  Widget build(BuildContext context) {
    return tab();
  }

  Widget tab() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyleSelect.boldTitle
          ),
          Text(
            subTitle,
            style: TextStyleSelect.subTitleGrey
          ),
        ],
      ),
    );
  }
}
