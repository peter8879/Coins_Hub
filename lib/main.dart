import 'package:coins_hub/core/routes/app_routes.dart';
import 'package:coins_hub/core/services/get_it_service.dart';
import 'package:coins_hub/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(const CoinsHub());
}

class CoinsHub extends StatelessWidget {
  const CoinsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: HomeView.routeName,
    );
  }
}
