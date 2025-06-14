import 'package:ekran15todolist/providers/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToolBarWidget extends ConsumerWidget {
  const ToolBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counter = ref.watch(toDoListCounter);
    var unCompletedCounter = ref.watch(uncompletedCounter);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("$counter To Do"),
        unCompletedCounter == 0
            ? Text("All Works Done ")
            : Text("$unCompletedCounter Uncompleted To Do"),
      ],
    );
  }
}
