import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_practice/screen/my_home_page.dart';
import 'package:riverpod_practice/state/my_home_state.dart';
import 'package:riverpod_practice/view_model/my_home_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

final myHomePageProvider =
    StateNotifierProvider<MyHomePageStateNotifier, MyHomePageState>(
        (ref) => MyHomePageStateNotifier());

// class MyHomePageState extends ChangeNotifier {
//   int counter = 0;
//
//   void increment() {
//     counter++;
//     //setState的なやつ
//     notifyListeners();
//   }
//
//   void reBuild() {
//     notifyListeners();
//   }
// }
