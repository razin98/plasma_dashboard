import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/pages/reports/widgets/age.dart';
import 'package:flutter_web_dashboard/pages/reports/widgets/gender.dart';

class reportsDesign extends StatelessWidget {
  const reportsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("Centers",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 300,
                 // child: PieOutsideLabelChart.withSampleData(),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Gender",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 300,
                 // child: PieOutsideLabelChartgender.withSampleData(),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Age",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 300,
                //  child:  SimpleBarChart.withSampleData(),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
