import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_todo_list/app/data/service/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;

  HomeController({required this.taskRepository});
}
