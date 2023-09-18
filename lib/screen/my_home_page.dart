import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_practice/main.dart';

import 'package:riverpod_practice/state/my_home_state.dart';
import 'package:riverpod_practice/view_model/my_home_view_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyHomePageをビルド');
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutterラボ'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              WidgetA(),
              WidgetB(),
              WidgetC(),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  const WidgetA({super.key});

  @override
  Widget build(BuildContext context) {
    print('WidgetAをビルド');
    return const Text('You have pushed this button many times.');
  }
}

class WidgetB extends ConsumerWidget {
  const WidgetB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('WidgetBをビルド');
    //watchはいかなる時でも再描画を行う
    final int counter = ref.watch(myHomePageProvider).counter;
    // final int counter =
    //     context.select<MyHomePageState, int>((state) => state.counter);
    return Text(
      '${counter}',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class WidgetC extends ConsumerWidget {
  const WidgetC({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('WidgetCをビルド');
    //readは再描画を行わない
    final Function increment = ref.read(myHomePageProvider.notifier).increment;
    return ElevatedButton(
      onPressed: () {
        increment();
      },
      child: Text('カウント'),
    );
  }
}
