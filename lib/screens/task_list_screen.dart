import 'package:flutter/material.dart';
import '../widgets/task_list_widget.dart';
import '../models/task_model.dart';

class TaskListScreen extends StatelessWidget {
  final List<Task> _tasks = [
    Task(
        title: 'Tarea Programacion 1.1',
        description: 'Desarrolle un Programa para dispositivo movil.',
        time: '12:00'),
    Task(
        title: 'Tarea Programacion 2.1',
        description: 'Desarrolle un Programa para dispositivo movil.',
        time: '11:59'),
    Task(
        title: 'Tarea Programacion 3.1',
        description: 'Desarrolle un Programa para dispositivo movil.',
        time: '11:59'),
    Task(
        title: 'Tarea Programacion 3.2',
        description: 'Desarrolle un Programa para dispositivo movil.',
        time: '11:59'),
    Task(
        title: 'Tarea Programacion 4.1',
        description: 'Desarrolle un Programa para dispositivo movil.',
        time: '11:59'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: TaskListWidget(tasks: _tasks),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add code to show a dialog or navigate to a screen for adding a new task.
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
