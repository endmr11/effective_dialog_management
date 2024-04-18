import 'package:effective_dialog_management/core/utils/dialog_manager.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
                Navigator.pushNamed(context, "/second");
              },
              child: const Text("Second Page"),
            ),
          ],
        ),
      ),
    );
  }
}
