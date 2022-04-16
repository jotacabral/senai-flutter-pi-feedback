import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:senai_feedback/shared/app_ui.dart';

class HomeFooter extends StatefulWidget {
  const HomeFooter({Key? key}) : super(key: key);

  @override
  State<HomeFooter> createState() => _HomeFooterState();
}

class _HomeFooterState extends State<HomeFooter> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 50,
      backgroundColor: Colors.white,
      color: AppUi.colorB,
      items: <Widget>[
        Icon(Icons.add, size: 25),
        Icon(Icons.list, size: 25),
        Icon(Icons.compare_arrows, size: 25),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
