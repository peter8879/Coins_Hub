//generate Routes
import 'package:flutter/material.dart';
import 'package:coins_hub/features/home/presentation/views/home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    default:
      return MaterialPageRoute(builder: (_) => const HomeView());
  }
}
