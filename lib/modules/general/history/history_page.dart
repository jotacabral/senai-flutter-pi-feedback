import 'package:flutter/material.dart';
import 'package:senai_feedback/models/feedback.dart';
import 'package:senai_feedback/shared/services/feedbak_service.dart';
import 'package:senai_feedback/shared/components/app_page_default.dart';

import '../../../shared/states.dart';
import 'components/card_History.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late FeedbackService controller;
  @override
  void initState() {
    controller = FeedbackService(TypeList.ListHistory);
    controller.fetchAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppPageDefault(
        titlePage: 'Histórico',
        child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              if (controller.value is StateLoading) {
                return const Text(
                  "Carregando...",
                );
              }
              if (controller.value is StateError) {
                final msg = (controller.value as StateError).error;

                return Text(
                  msg,
                  textAlign: TextAlign.center,
                );
              }

              List<FeedbackModel> result =
                  (controller.value as StateSuccess<FeedbackModel>).result;

              return Container(
                height: 500,
                child: ListView.builder(
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return CardHistory(model: result[index]);
                  },
                ),
              );
            }));
  }
}
