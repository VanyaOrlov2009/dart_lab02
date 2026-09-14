import 'package:lab02_v2/todo.dart';


void main() {
  Todo task = Todo(1, 'Купить продукты');
  print(task.id);
  print(task.title);
  print(task.isDone);
}
