import 'package:effective_dialog_management/view/base_page.dart';
import 'package:effective_dialog_management/view/bloc/dialog_bloc.dart';
import 'package:effective_dialog_management/view/first_page.dart';
import 'package:effective_dialog_management/view/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DialogBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        builder: (context, child) {
          return BasePage(navigatorKey: navigatorKey, child: child!);
        },
        navigatorKey: navigatorKey,
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstPage(),
          '/second': (context) => const SecondPage(),
        },
      ),
    );
  }
}
