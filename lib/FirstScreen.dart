import 'package:flutter/material.dart';
import 'package:sberbank_project/Cards.dart';
import 'package:sberbank_project/MyChipCoice.dart';
import 'package:sberbank_project/info_pads.dart';
import 'package:sberbank_project/info_tabs.dart';
import 'package:sberbank_project/resources/ImageSelect.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        InfoTabs("У вас подключено", "Подписки, автоплатежи и сервисы на которые вы подписались"),
        const SizedBox(height: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                CardViews("СберПрайм", "Платеж 9 июля", "199 Р в месяц",
                  ImageSelect.sberImage),
                CardViews("Переводы", "Автопродление 21 августа",
                    "199 Р в месяц", ImageSelect.percentImage),
              ],
            ),
          ),
        ),
        const SizedBox(height: 46),
        InfoTabs("Тарифы и лимиты", "Для операций в Сбербанк Онлайн"),
        const SizedBox(height: 12),
        InfoPads("Изменить суточный лимит", "На платежи и переводы",
            ImageSelect.speedometerIcon),
        const Divider(
          height: 1,
          thickness: 0,
          indent: 64,
          endIndent: 0,
          color: Colors.grey,
        ),
        InfoPads("Переводы без комиссии", "Показать остаток в этом месяце",
            ImageSelect.percentSendIcon),
        const Divider(
          height: 1,
          thickness: 0,
          indent: 64,
          endIndent: 0,
          color: Colors.grey,
        ),
        InfoPads("Информация о тарифах\nи лимитах", "",
            ImageSelect.arrowBackIcon),
        const SizedBox(height: 46),
        InfoTabs("Интересы","Мы подбираем истории и предложения по темам, которые вам нравятся"),
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
