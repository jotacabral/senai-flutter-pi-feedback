import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/general/home/components/home_body.dart';
import 'package:senai_feedback/modules/general/home/components/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [const HomeHeader(), HomeBody()],
    );
  }
}
