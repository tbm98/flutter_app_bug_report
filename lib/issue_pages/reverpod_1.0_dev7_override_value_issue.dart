import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class counterNotifier extends StateNotifier<int> {
  counterNotifier(int value) : super(value);
}

final counterProvider =
    StateNotifierProvider.autoDispose<counterNotifier, int>((ref) {
  throw UnimplementedError();
});

class RiverpodOverrideIssue extends ConsumerWidget {
  const RiverpodOverrideIssue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // overrideWithProvider is ok
            ProviderScope(overrides: [
              counterProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose<counterNotifier, int>(
                      (ref) {
                return counterNotifier(10);
              }))
            ], child: Counter()),

            // overrideWithValue is not
            ProviderScope(overrides: [
              counterProvider.overrideWithValue(counterNotifier(11))
            ], child: Counter()),
          ],
        ),
      ),
    );
  }
}

class Counter extends ConsumerWidget {
  const Counter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Column(
      children: [
        Text('$count'),
        ChildCounter(),
      ],
    );
  }
}

class ChildCounter extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Text('it\'s child counter $count');
  }
}
