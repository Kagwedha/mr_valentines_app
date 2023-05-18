import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/checklist/widgets/todo_list.dart';
import 'package:mr_valentines_app/screens/checklist/widgets/user_input.dart';
import 'package:mr_valentines_app/screens/comment/7_commentpage.dart';
import 'todo.dart';
import 'database.dart';
import 'package:mr_valentines_app/main.dart';
import 'package:mr_valentines_app/screens/checklist/widgets/todo_card.dart';

class AddJob extends StatefulWidget {
  const AddJob({Key? key}) : super(key: key);

  @override
  State<AddJob> createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  var db = DatabaseConnect();

  void addItem(Todo todo) async {
    await db.insertTodo(todo);
    setState(() {});
  }

  void deleteItem(Todo todo) async {
    await db.deleteTodo(todo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
        'Add Job',
      )),
      body: Column(
        children: [
          TodoList(insertFunction: addItem, deleteFunction: deleteItem),
          UserInput(
            insertFunction: addItem,
          ),
        ],
      ),
    );
  }
}
