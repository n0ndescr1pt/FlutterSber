// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/ColorSelect.dart';
import 'package:sberbank_project/resources/ImageSelect.dart';
import 'package:sberbank_project/resources/TextSelect.dart';
import 'package:sberbank_project/resources/TextStyles.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 2,
      pinned: false,
      floating: true,
      stretch: true,
      expandedHeight: 270,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 52),
              width: 110,
              height: 110,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                  image: ImageSelect.profilePhoto,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(46.0),
              child: Text(
                TextSelect.username,
                style: TextStyleSelect.nameText
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.all(14),
          iconSize: 24,
          icon: const Icon(Icons.close),
          color: ColorSelect.greenColor,
          onPressed: () {},
        ),
        const Expanded(child: Text("")),
        IconButton(
          iconSize: 24,
          padding: const EdgeInsets.all(14),
          icon: const Icon(Icons.exit_to_app),
          color: ColorSelect.greenColor,
          onPressed: () {},
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromRadius(70),
        child: TabBar(
          indicatorColor: ColorSelect.greenColor,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: ColorSelect.blackColor,
          tabs: [
            Tab(text: TextSelect.firstTab),
            Tab(text: TextSelect.secondTab),
          ],
          
        ),
      ),
    );
  }
}
