import 'dart:io';
import 'package:lab2_todo/todo.dart';
void printMenu() {
  print('');
  print('ToDo список');
  print('add    - добавить задачу');
  print('list   - показать все задачи');
  print('done   - отметить выполненной');
  print('delete - удалить задачу');
  print('exit   - выйти');

  void addTodo(List<Todo> todos) {
    stdout.write('Название задачи: ');
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print('Ошибка: название не может быть пустым');
      return;
    }

    int newId = todos.isEmpty ? 1 : todos.last.id + 1;
    todos.add(Todo(id: newId, title: input.trim()));
    print('Задача добавлена!');

  }
}
