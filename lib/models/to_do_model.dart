class ToDoModel {
  late final String id;
  final String description;
  bool isCompleted;
  ToDoModel({required this.id, required this.description, this.isCompleted = false});
}
