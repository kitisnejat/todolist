import 'package:ekran15todolist/models/to_do_model.dart';
import 'package:ekran15todolist/providers/to_do_list_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final toDoListProvider =
    StateNotifierProvider<ToDoListManager, List<ToDoModel>>((ref) {
      return ToDoListManager();
    });

final toDoListCounter = Provider((ref) {
  final allToDos = ref.watch(toDoListProvider);
  final toDolistCounter = allToDos.length;
  return toDolistCounter;
});

final uncompletedCounter = Provider((ref) {
  final allToDos = ref.watch(toDoListProvider);
  final counter = allToDos.where((element) => !element.isCompleted).length;
  return counter;
});
