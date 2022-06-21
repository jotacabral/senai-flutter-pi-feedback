import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/general/history/history_page.dart';
import 'package:senai_feedback/modules/general/home/home_page.dart';
import 'package:senai_feedback/modules/general/shedule/shedule_page.dart';
import 'package:senai_feedback/shared/app_ui.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  int index = 0;

  List<Widget> pages = [
    const HomePage(),
    const ShedulePage(),
    const HistoryPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppUi.colorA,
                  AppUi.colorB,
                ],
                begin: FractionalOffset(1.0, 0.0),
                end: FractionalOffset(0.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.decal),
          ),
          child: pages[index]),
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 50,
          backgroundColor: Colors.white,
          color: AppUi.colorB,
          // ignore: prefer_const_literals_to_create_immutables
          items: <Widget>[
            const Icon(
              Icons.home,
              size: 25,
              color: Colors.white,
            ),
            const Icon(
              Icons.calendar_today,
              size: 25,
              color: Colors.white,
            ),
            const Icon(
              Icons.list,
              size: 25,
              color: Colors.white,
            ),
          ],
          onTap: (int value) => setState(() {
                index = value;
              })),
    );
  }
}
