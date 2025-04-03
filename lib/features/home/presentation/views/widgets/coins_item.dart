import 'package:flutter/material.dart';

class CoinsItem extends StatelessWidget {
  const CoinsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const Text(
          "Bitcoin",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        title: const Text("BTC", style: TextStyle(fontSize: 20)),
        trailing: const Text(
          "\$40,000",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
