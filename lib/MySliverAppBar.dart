// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/ImageSelect.dart';

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
                'Екатерина',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
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
          color: Colors.green,
          onPressed: () {},
        ),
        const Expanded(child: Text("")),
        IconButton(
          iconSize: 24,
          padding: const EdgeInsets.all(14),
          icon: const Icon(Icons.exit_to_app),
          color: Colors.green,
          onPressed: () {},
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromRadius(70),
        child: TabBar(
          indicatorColor: Colors.green,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.black,
          tabs: [
            Tab(text: 'Профиль'),
            Tab(text: 'Настройки'),
          ],
          
        ),
      ),
    );
  }
}
