import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/home/components/home_card_dash.dart';
import 'package:senai_feedback/shared/app_ui.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);

  List<_PieData> data = [
    _PieData('0,0', 80, text: 'Positivos'),
    _PieData('0,0', 20, text: 'Negativos')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeCardDash(
                  title: 'Pendentes',
                  total: 2,
                ),
                SizedBox(
                  width: 10,
                ),
                HomeCardDash(
                  title: 'Realizados',
                  total: 14,
                ),
              ],
            ),
            SfCircularChart(margin: EdgeInsets.all(0), palette: [
              AppUi.colorA,
              AppUi.colorB,
            ], series: <PieSeries<_PieData, String>>[
              PieSeries<_PieData, String>(
                  dataSource: data,
                  xValueMapper: (_PieData data, _) => data.xData,
                  yValueMapper: (_PieData data, _) => data.yData,
                  dataLabelMapper: (_PieData data, _) => data.text,
                  dataLabelSettings: DataLabelSettings(isVisible: true)),
            ])
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, {this.text});
  final String xData;
  final num yData;
  final String? text;
}
