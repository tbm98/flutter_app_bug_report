import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class counterNotifier extends StateNotifier<int> {
  counterNotifier(int value) : super(value);
}

final counter2Provider =
    StateNotifierProvider.autoDispose<counterNotifier, int>((ref) {
  ref.onDispose(() {
    print('counter2 dispose'); // never call
  });
  throw UnimplementedError();
});

class RiverpodOverrideIssue2 extends ConsumerWidget {
  const RiverpodOverrideIssue2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // overrideWithValue is not
            ProviderScope(overrides: [
              counter2Provider.overrideWithValue(counterNotifier(11))
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
    final count = ref.watch(counter2Provider);
    return Text('$count');
  }
}
