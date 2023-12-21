import 'package:flutter/material.dart';
import 'package:sberbank_project/Cards.dart';
import 'package:sberbank_project/MyChipCoice.dart';
import 'package:sberbank_project/info_pads.dart';
import 'package:sberbank_project/info_tabs.dart';
import 'package:sberbank_project/resources/ColorSelect.dart';
import 'package:sberbank_project/resources/ImageSelect.dart';
import 'package:sberbank_project/resources/TextSelect.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        InfoTabs(TextSelect.firstInfoTabTitle, TextSelect.firstInfoTabSubTitle),
        const SizedBox(height: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                CardViews(TextSelect.sberPrimeCardTitle, TextSelect.sberPrimeCardSubTitle, TextSelect.subscriptionPrice,
                  ImageSelect.sberImage),
                CardViews(TextSelect.sendCardTitle, TextSelect.sendCardSubTitle,
                    TextSelect.subscriptionPrice, ImageSelect.percentImage),
              ],
            ),
          ),
        ),
        const SizedBox(height: 46),
        InfoTabs(TextSelect.secondInfoTabTitle, TextSelect.secondInfoTabSubTitle),
        const SizedBox(height: 12),
        InfoPads(TextSelect.firstInfoPadTitle, TextSelect.firstInfoPadSubTitle,
            ImageSelect.speedometerIcon),
        const Divider(
          height: 1,
          thickness: 0,
          indent: 64,
          endIndent: 0,
          color: ColorSelect.greyColor,
        ),
        InfoPads(TextSelect.secondInfoTabTitle, TextSelect.secondInfoTabSubTitle,
            ImageSelect.percentSendIcon),
        const Divider(
          height: 1,
          thickness: 0,
          indent: 64,
          endIndent: 0,
          color: ColorSelect.greyColor,
        ),
        InfoPads(TextSelect.thirtInfoPadTitle, TextSelect.thirtInfoPadSubTitle,
            ImageSelect.arrowBackIcon),
        const SizedBox(height: 46),
        InfoTabs(TextSelect.thirtInfoTabTitle,TextSelect.thirtInfoTabSubTitle),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Wrap(
            spacing: 8,
            children: [
              MyChipChoice(
                title: 'Еда',
              ),
              MyChipChoice(
                title: "Саморазвитие",
              ),
              MyChipChoice(
                title: "Технологии",
              ),
              MyChipChoice(
                title: "Дом",
              ),
              MyChipChoice(
                title: "Досуг",
              ),
              MyChipChoice(
                title: "Забота о себе",
              ),
              MyChipChoice(
                title: "Наука",
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
