import 'package:ekran15todolist/models/to_do_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class ToDoListManager extends StateNotifier<List<ToDoModel>> {
  ToDoListManager() : super([]);

  void addToList(String description) {
    ToDoModel toDo = ToDoModel(id: Uuid().v4(), description: description);
    state = [...state, toDo];
  }

  void removeFromList(ToDoModel toDo) {
    state = state.where((element) => element.id != toDo.id).toList();
  }

  void turn(String id) {
    state = [
      for (ToDoModel toDo in state)
        if (toDo.id == id)
          ToDoModel(
            id: toDo.id,
            description: toDo.description,
            isCompleted: !toDo.isCompleted,
          )
        else
          toDo,
    ];
  }

  int ucCompletedCounter() {
    return state.length =
        state.where((element) => !element.isCompleted).toList().length;
  }
}
