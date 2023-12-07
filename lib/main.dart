import 'package:flutter/material.dart';
import 'package:sberbank_project/Cards.dart';
import 'package:sberbank_project/FirstScreen.dart';
import 'package:sberbank_project/MyChipCoice.dart';
import 'package:sberbank_project/MySliverAppBar.dart';
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
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[const MySliverAppBar()];
            },
            body: TabBarView(
              controller: controller,
              children: const <Widget>[
                FirstScreen(),
                Center(child: Text("Tab two")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
