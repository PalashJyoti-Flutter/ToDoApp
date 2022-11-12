import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _mybox = Hive.box('mybox');

  // 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Coding", false],
      ["Exercise", false]
    ];
  }

  // load data from db
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // update database
  void updateDatabase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
