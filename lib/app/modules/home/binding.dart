import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:getx_todo_list/app/data/provider/task_provider.dart';
import 'package:getx_todo_list/app/data/service/storage/repository.dart';
import 'package:getx_todo_list/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
