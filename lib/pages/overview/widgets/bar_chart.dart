/// Simple pie chart with outside labels example.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PieOutsideLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
   bool? animate;

  PieOutsideLabelChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory PieOutsideLabelChart.withSampleData() {
    return new PieOutsideLabelChart(
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
  static List<charts.Series<centers, int>> _createSampleData() {
    final data = [
      new centers('Darelsalam', 2500,charts.Color(r:255,g:219,b: 165)),
      new centers('Abbasiya', 2300,charts.Color(r:255,g:158,b: 15)),
      new centers('Dr.Ehab Serageldin', 2100,charts.Color(r:255,g:174,b: 55)),
      new centers('Alexandria ', 1900,charts.Color(r:255,g:186,b: 85)),
      new centers('Tanta', 1700,charts.Color(r:255,g:198,b: 115)),
      new centers(' Minya', 1500,charts.Color(r:255,g:210,b:145)),
      
    ];

    return [
      new charts.Series<centers, int>(
        id: 'Centers',
        domainFn: (centers Centers, _) => Centers.donors,
        measureFn: (centers Centers, _) => Centers.donors,
        colorFn: (centers Centers, _) => Centers.color,
        data: data,
        
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (centers row, _) => '${row.center}: ${row.donors}',
      )
    ];
  }
}

/// Sample linear data type.
class centers {
  final String center;
  final int donors;
    final charts.Color color;

  centers(this.center, this.donors, this.color);
}
