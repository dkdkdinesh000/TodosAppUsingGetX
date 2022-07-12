import 'package:getx_todo_list/app/data/models/tasks.dart';
import 'package:getx_todo_list/app/data/provider/task_provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask() => taskProvider.readTasks();
  void writeTask(List<Task> tasks) => taskProvider.writeTask(tasks);
}
