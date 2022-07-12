import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_todo_list/app/modules/home/controller.dart';
import 'package:getx_todo_list/app/core/utils/extensions.dart';
import 'package:getx_todo_list/app/modules/home/widgets/add_card.dart';
import 'package:getx_todo_list/app/modules/home/widgets/task_card.dart';

import '../../data/models/tasks.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(4.0.wp),
                child: Text(
                  "My List",
                  style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Obx(
                () => GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    // TaskCard(
                    //   task: Task(
                    //     title: 'Test',
                    //     icon: 0xe59c,
                    //     color: '#ff0000ff',
                    //   ),
                    // ),
                    ...controller.tasks
                        .map(
                          (element) => TaskCard(task: element),
                        )
                        .toList(),
                    AddCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
