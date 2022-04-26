import 'package:flutter/material.dart';

class CardHistory extends StatelessWidget {
  const CardHistory({
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
