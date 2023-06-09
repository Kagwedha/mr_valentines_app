import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/checklist/database.dart';
import 'package:mr_valentines_app/screens/checklist/widgets/todo_card.dart';

class TodoList extends StatelessWidget {
  final Function insertFunction;
  final Function deleteFunction;
  var db = DatabaseConnect();
  TodoList(
      {required this.deleteFunction, required this.insertFunction, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: db.getTodo(),
        initialData: const [],
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          var data = snapshot.data;
          var datalength = data!.length;

          return datalength == 0
              ? const Center(
                  child: Text('no data found'),
                )
              : ListView.builder(
                  itemCount: datalength,
                  itemBuilder: (context, i) => TodoCard(
                    id: data[i].id,
                    title: data[i].title,
                    creationDate: data[i].creationDate,
                    isChecked: data[i].isChecked,
                    insertFunction: insertFunction,
                    deleteFunction: deleteFunction,
                  ),
                );
        },
      ),
    );
  }
}
