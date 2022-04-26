import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/general/history/components/card_history.dart';
import 'package:senai_feedback/shared/components/app_page_default.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const AppPageDefault(
        titlePage: 'Histórico',
        childrens: [
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
          CardHistory(),
        ],
      );
}
