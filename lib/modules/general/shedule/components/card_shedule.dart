import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:senai_feedback/models/feedback.dart';

class CardShedule extends StatelessWidget {
  final FeedbackModel model;
  CardShedule({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(16),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "REUNIÃO AGENDADA, MOTIVO: " + model.descricao.toUpperCase()),
              Text(
                "Resumo: " + model.resumo,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check_box,
                color: Colors.green,
                size: 32,
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
