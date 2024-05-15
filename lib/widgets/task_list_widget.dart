import 'package:flutter/material.dart';
import 'package:laboratorio2_app/models/task_model.dart';

class TaskListWidget extends StatelessWidget {
  final List<Task> tasks;

  TaskListWidget({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Card(
          child: ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
            trailing: Text(task.time),
          ),
        );
      },
    );
  }
}
