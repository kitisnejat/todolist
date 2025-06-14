import 'package:ekran15todolist/providers/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextFieldWidget extends ConsumerWidget {
  TextFieldWidget({super.key});
  TextEditingController textEditingController1 = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: TextField(
            controller: textEditingController1,
            decoration: InputDecoration(labelText: "Write things to do"),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              ref
                  .read(toDoListProvider.notifier)
                  .addToList(textEditingController1.text);
            },
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
