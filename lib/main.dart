import 'package:flutter/material.dart';
import 'package:sberbank_project/Cards.dart';
import 'package:sberbank_project/info_pads.dart';
import 'package:sberbank_project/info_tabs.dart';

void main() => runApp(const MaterialApp(
      home: SilverAppBarWithTabBarScreen(),
    ));

class SilverAppBarWithTabBarScreen extends StatefulWidget {
  const SilverAppBarWithTabBarScreen({super.key});

  @override
  _SilverAppBarWithTabBarState createState() => _SilverAppBarWithTabBarState();
}

class _SilverAppBarWithTabBarState extends State<SilverAppBarWithTabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
                        image: AssetImage('assets/images/woman.png'),
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
            bottom: PreferredSize(
              preferredSize: const Size.fromRadius(70),
              child: TabBar(
                indicatorColor: Colors.green,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Профиль'),
                  Tab(text: 'Настройки'),
                ],
                controller: controller,
              ),
            ),
          ),
          // SliverList(

          SliverFillRemaining(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(250, 250, 250, 1),
              ),
              child: TabBarView(
                controller: controller,
                children: <Widget>[
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      const InfoTabs(),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(
                            children: [
                              CardViews("СберПрайм", "Платеж 9 июля",
                                  "199 Р в месяц", "assets/icons/sber.png"),
                              CardViews("Переводы", "Автопродление 21 августа",
                                  "199 Р в месяц", "assets/icons/percent.png"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 46),
                      const InfoTabs(),
                      const SizedBox(height: 12),
                      InfoPads(
                          "Изменить суточный лимит",
                          "На платежи и переводы",
                          "assets/icons/speedometer.png"),
                      const Divider(
                        height: 1,
                        thickness: 0,
                        indent: 64,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                      InfoPads(
                          "Переводы без комиссии",
                          "Показать остаток в этом месяце",
                          "assets/icons/percentSend.png"),
                          const Divider(
                        height: 1,
                        thickness: 0,
                        indent: 64,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                      InfoPads("Информация о тарифах\nи лимитах", "",
                          "assets/icons/arrows_forward_back.png"),
                      const SizedBox(height: 46),
                      const InfoTabs(),
                    ],
                  ),
                  const Center(child: Text("Tab two")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable

