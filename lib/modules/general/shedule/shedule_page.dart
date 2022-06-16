import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/general/shedule/shedule_controller.dart';
import 'package:senai_feedback/shared/components/app_page_default.dart';

import 'components/card_shedule.dart';

class ShedulePage extends StatefulWidget {
  const ShedulePage({Key? key}) : super(key: key);

  @override
  State<ShedulePage> createState() => _ShedulePageState();
}

class _ShedulePageState extends State<ShedulePage> {
  late SheduleController controller;
  @override
  void initState() {
    controller = SheduleController();
    controller.fetchAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          if (controller.value is StateLoading) {
            return Text("Carregando...");
          }

          if (controller.value is StateError) {
            return Text(("Estado recebido == ERROR "));
          }
          List<Feedback> result =
              (controller.value as StateSuccess<Feedback>).result;
          return AppPageDefault(
            titlePage: 'Agendamentos',
            childrens: result.map<Widget>((value) => CardShedule()).toList(),
          );
        });
  }
}
