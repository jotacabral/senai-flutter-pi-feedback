import 'package:flutter/material.dart';
import 'package:senai_feedback/models/feedback.dart';

class CardHistory extends StatelessWidget {
  final FeedbackModel model;

  CardHistory({required this.model});

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
              Text("APLICADA: " + model.descricao.toUpperCase()),
              Text(
                "Descrição: " + model.resumo,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.note_add,
                color: Color.fromARGB(234, 208, 141, 17),
                size: 30,
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
