import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sandbox/main.dart';

class SecondRoute extends ConsumerWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Go back"),
              ),
              Text("Car: ${ref.watch(carProvider).modelName}"),
              Text("Engine: ${ref.watch(carProvider).engine.name}"),
            ],
          ),
        ),
      ),
    );
  }
}
