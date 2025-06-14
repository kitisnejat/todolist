import 'package:ekran15todolist/models/to_do_model.dart';
import 'package:ekran15todolist/providers/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListItemWidget extends ConsumerStatefulWidget {
  ListItemWidget({super.key, required this.item});
  ToDoModel item;

  @override
  ListItemWidgetState createState() => ListItemWidgetState();
}

class ListItemWidgetState extends ConsumerState<ListItemWidget> {
  bool isCompleted = false;

  void complete() {
    setState(() {
      isCompleted = !isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(context),
      onDismissed: (direction) {
        ref.read(toDoListProvider.notifier).removeFromList(widget.item);
      },
      child: ListTile(
        title: Text(widget.item.description),
        leading: IconButton(
          onPressed: () {
            complete();
            ref.read(toDoListProvider.notifier).turn(widget.item.id);
          },
          icon: !isCompleted ? Icon(Icons.flutter_dash) : Icon(Icons.check_box),
        ),
      ),
    );
  }
}
