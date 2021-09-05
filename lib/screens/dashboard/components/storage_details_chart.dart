import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../models/storage_detail_model.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  double totalStorage = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < storageDetailList.length; i++) {
      totalStorage += storageDetailList[i].storage!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.0,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: 70.0,
              startDegreeOffset: 270.0,
              sections: List<PieChartSectionData>.generate(
                storageDetailList.length,
                (index) => PieChartSectionData(
                  showTitle: false,
                  radius: 25.0 - index * 5.0,
                  value: storageDetailList[index].storage,
                  color: storageDetailList[index].color,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              '$totalStorage',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const Text('Of 128GB'),
          ],
        )
      ],
    );
  }
}