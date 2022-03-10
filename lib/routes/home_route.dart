import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sandbox/routes/second_route.dart';
import 'package:riverpod_sandbox/widgets/add_counter_widget.dart';
import 'package:riverpod_sandbox/widgets/counter_widget.dart';

final counterProvider = StateProvider.autoDispose<int>((ref) => 0);

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  void _navigateToSecondRoute(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) {
          return const SecondRoute();
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CounterWidget(),
              ElevatedButton(
                onPressed: () => _navigateToSecondRoute(context),
                child: const Text("Move To Second Route"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: const Text("Return to start"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const AddCounterWidget(),
    );
  }
}
