import 'package:effective_dialog_management/core/utils/dialog_manager.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loading Dialog Manager with BLoC")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                DialogManager.showLoading(context);
                Future.delayed(const Duration(seconds: 3), () {
                  DialogManager.hideLoading(context);
                });
              },
              child: const Text("Show Loading"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
