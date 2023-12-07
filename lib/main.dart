import 'package:flutter/material.dart';
import 'package:sberbank_project/FirstScreen.dart';
import 'package:sberbank_project/MySliverAppBar.dart';

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


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[const MySliverAppBar()];
            },
            body: const TabBarView(
              
              children: <Widget>[
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
