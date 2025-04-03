import 'package:coins_hub/features/home/presentation/views/widgets/coins_list.dart';
import 'package:coins_hub/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const HomeAppBar(),
            const SizedBox(height: 20),
            ListTile(
              leading: Text("Name", style: TextStyle(fontSize: 20)),
              title: Text("Symbol", style: TextStyle(fontSize: 20)),
              trailing: Text("Price(EGP)", style: TextStyle(fontSize: 20)),
            ),
            Expanded(child: const CoinsList()),
          ],
        ),
      ),
    );
  }
}
