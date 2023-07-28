import 'package:get/get.dart';
import 'package:todo/models/task.dart';

class TaskController extends GetxController {
  final taskList = <Task>[
    Task(
      title: 'Title 1',
      note: 'having a launch wuth my family',
      isCompleted: 1,
      startTime: '9:32',
      endTime: '3:23',
      color: 1,
    ),
    Task(
      title: 'title 2',
      note: 'ovjcw evijwiwv wviwebv wv',
      isCompleted: 0,
      startTime: '9:32',
      endTime: '3:23',
      color: 3,
    ),
    Task(
      title: 'title 3',
      note: 'efvwn ijwv wijvwwvij',
      isCompleted: 1,
      startTime: '3:32',
      endTime: '2:23',
      color: 2,
    ),
  ];

  getTasks() {}
}
