import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/home/components/home_footer.dart';
import 'package:senai_feedback/modules/home/components/home_header.dart';
import 'package:senai_feedback/shared/app_ui.dart';

import 'components/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 21, 21),
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
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [const HomeHeader(), const HomeBody()],
        ),
      ),
      bottomNavigationBar: HomeFooter(),
    );
  }
}
