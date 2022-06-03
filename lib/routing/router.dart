import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/donors/donors.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/pages/profile/profile.dart';
import 'package:flutter_web_dashboard/pages/reports/reports.dart';
import 'package:flutter_web_dashboard/pages/reservations/reservations.dart';
import 'package:flutter_web_dashboard/pages/settings/settings.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case profilePageRoute:
      return _getPageRoute(profile());
    case donorsPageRoute:
      return _getPageRoute(Donors());
    case reservationsPageRoute:
      return _getPageRoute(reservations());
    case reportsPageRoute:
      return _getPageRoute(reports());
    case settingsPageRoute:
      return _getPageRoute(setting());
    
    default:
      return _getPageRoute(OverviewPage());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}