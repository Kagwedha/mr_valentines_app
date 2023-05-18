import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/checklist/todo.dart';

import '../../comment/7_commentpage.dart';

class TodoCard extends StatefulWidget {
  final int id;
  final String title;
  final DateTime creationDate;
  bool isChecked;
  final Function deleteFunction;
  final Function insertFunction;
  TodoCard(
      {required this.id,
      required this.title,
      required this.creationDate,
      required this.isChecked,
      required this.insertFunction,
      required this.deleteFunction,
      Key? key})
      : super(key: key);

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    var anotherTodo = Todo(
        id: widget.id,
        title: widget.title,
        creationDate: widget.creationDate,
        isChecked: widget.isChecked);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Checkbox(
            value: widget.isChecked,
            onChanged: (bool? value) {
              setState(() {
                widget.isChecked = value!;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CommentPage()));
              });
              anotherTodo.isChecked = value!;
              widget.insertFunction(anotherTodo);
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.creationDate.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFFB0BEC5),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              widget.deleteFunction(anotherTodo);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
