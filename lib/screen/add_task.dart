import 'package:flutter/material.dart';
import 'package:todo_app/Model/task_model.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Task"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: taskController,
                decoration: InputDecoration(hintText: 'Type Something'),
              ),
            ),
            ElevatedButton(onPressed: () {
             taskList.add(Todo(tittle: taskController.text));
             Navigator.pop(context);
            }, child: Text('Add Task'))
          ],
        ),
      ),
    );
  }
}
