import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'sonuc_page.dart';

class StateManagementPage extends StatefulWidget {
  const StateManagementPage({super.key});

  @override
  _StateManagementPageState createState() => _StateManagementPageState();
}

class _StateManagementPageState extends State<StateManagementPage> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void _showResult() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(counter: counter),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State Management Sayfası")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: AppSize.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrement,
                  child: const Text("-"),
                ),
                const SizedBox(width: AppSize.md),
                ElevatedButton(
                  onPressed: _increment,
                  child: const Text("+"),
                ),
              ],
            ),
            const SizedBox(height: AppSize.md),
            ElevatedButton(
              onPressed: _showResult,
              child: const Text("Sonuç Gör"),
            ),
          ],
        ),
      ),
    );
  }
}

