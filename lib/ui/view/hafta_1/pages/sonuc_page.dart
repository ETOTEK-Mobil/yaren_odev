import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int counter;

  const ResultPage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sonuç Sayfasi")),
      body: Center(
        child: Text(
          "Sonuç: $counter",
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
