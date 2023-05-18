import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/checklist/6_AddJob.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  _commentButtonpressed() {}

  List<String> _comments = ["done by Maria", "done by David"];

  void _addComment(String val) {
    setState(() {
      _comments.add(val);
    });
  }

  Widget _buildCommentList() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index < _comments.length) {
        return _buildCommentItem(_comments[index]);
      }
      return const Text("");
    });
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(
        title: Text(
      comment,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Comments")),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildCommentList()),
            const TextField(
              //onSubmitted: (String submittedStr) {
              // _addComment(submittedStr);
              //},
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  hintText: "Add comment"),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                (String submittedStr) {
                  _addComment(submittedStr);
                };
              },
              child: Container(
                color: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
        ));
  }
}
