/// Simple pie chart with outside labels example.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PieOutsideLabelChartgender extends StatelessWidget {
  final List<charts.Series> seriesList;
   bool? animate;

  PieOutsideLabelChartgender(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory PieOutsideLabelChartgender.withSampleData() {
    return new PieOutsideLabelChartgender(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,

        // Add an [ArcLabelDecorator] configured to render labels outside of the
        // arc with a leader line.
        //
        // Text style for inside / outside can be controlled independently by
        // setting [insideLabelStyleSpec] and [outsideLabelStyleSpec].
        //
        // Example configuring different styles for inside/outside:
        //       new charts.ArcLabelDecorator(
        //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
        //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
        defaultRenderer: new charts.ArcRendererConfig(arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.outside)
        ]));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<gend, int>> _createSampleData() {
    final data = [
      new gend('male', 5600,charts.Color(a:255,r:242,g:79,b: 67)),
      new gend('female', 4270,charts.Color(a:255,r:33,g:150,b: 243)),
    ];

    return [
      new charts.Series<gend, int>(
        id: 'Gender',
        domainFn: (gend Gender, _) => Gender.donors,
        measureFn: (gend Gender, _) => Gender.donors,
        colorFn: (gend Gender, _) => Gender.color,
        data: data,
        
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (gend row, _) => '${row.gender}: ${row.donors}',
      )
    ];
  }
}

/// Sample linear data type.
class gend {
  final String gender;
  final int donors;
    final charts.Color color;

  gend(this.gender, this.donors, this.color);
}
