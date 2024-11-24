import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/view/hafta_1/pages/row_column_stack_page.dart';
import 'package:odev/ui/view/hafta_1/pages/state_management_page.dart';

class Hafta1View extends StatelessWidget {
  const Hafta1View({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text("Ödev Ana Sayfası")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowColumnStackPage(),
                  ),
                );
              },
              child: const Text("Row-Column-Stack Sayfası"),
            ),
            const SizedBox(height: AppSize.md),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StateManagementPage(),
                  ),
                );
              },
              child: const Text("State Management Sayfası"),
            ),
          ],
        ),
      ),
    );
  }
}
