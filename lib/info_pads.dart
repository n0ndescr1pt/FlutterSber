import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/ColorSelect.dart';

// ignore: must_be_immutable
class InfoPads extends StatelessWidget {
  String title;
  String subTitle;
  AssetImage icon;

  InfoPads(this.title, this.subTitle, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return pad();
  }

  Widget pad() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding:
              const EdgeInsets.only(left: 16, right: 8, bottom: 12, top: 12),
          child: Row(
            children: [
              Image(image: icon),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: ColorSelect.blackColor,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.40,
                    ),
                  ),
                  // ---
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: ColorSelect.blackWithOpacity50,
                      fontSize: subTitle != "" ? 14 : 0,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.41,
                    ),
                  )
                ],
              ),
              Spacer(),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                iconSize: 16,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

