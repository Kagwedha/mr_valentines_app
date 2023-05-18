import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/checklist/todo.dart';

class UserInput extends StatelessWidget {
  var textController = TextEditingController();
  final Function insertFunction;
  UserInput({required this.insertFunction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      color: const Color.fromARGB(15, 50, 55, 59),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                  hintText: 'add new todo', border: InputBorder.none),
            ),
          )),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              var myTodo = Todo(
                  title: textController.text,
                  creationDate: DateTime.now(),
                  isChecked: false);

              insertFunction(myTodo);
            },
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
