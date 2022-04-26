import 'package:flutter/material.dart';

class CardShedule extends StatelessWidget {
  const CardShedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(16),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '10/20/2022',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Agendamento'.toUpperCase()),
              Text(
                'Descrição',
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
              Icon(
                Icons.close,
                color: Colors.red,
                size: 32,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
