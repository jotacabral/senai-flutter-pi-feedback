import 'package:flutter/material.dart';
import 'package:senai_feedback/shared/components/app_page_default.dart';

import 'components/card_shedule.dart';

class ShedulePage extends StatelessWidget {
  const ShedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const AppPageDefault(
        titlePage: 'Agendamentos',
        childrens: [CardShedule(), CardShedule()],
      );
}
