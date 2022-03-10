import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sandbox/routes/home_route.dart';

class AddCounterWidget extends ConsumerWidget {
  const AddCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(counterProvider.state).state++;
      },
      child: const Icon(Icons.add),
    );
  }
}
