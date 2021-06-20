import 'package:equatable/equatable.dart';

import 'package:flutter_offline/data/models/todos.dart';

enum TodoStatus { success, pending, failed }

class TodoWrapper extends Equatable {
  final Todos todos;
  final TodoStatus todoStatus;
  TodoWrapper({
    required this.todos,
    required this.todoStatus,
  });

  @override
  List<Object> get props => [todos, todoStatus];

  TodoWrapper copyWith({
    Todos? todos,
    TodoStatus? todoStatus,
  }) {
    return TodoWrapper(
      todos: todos ?? this.todos,
      todoStatus: todoStatus ?? this.todoStatus,
    );
  }
}

final dummyTodos =
    Todos(id: 1, title: 'First title', description: 'First description');

final dummyTodoList = [
  TodoWrapper(todos: dummyTodos, todoStatus: TodoStatus.success),
  TodoWrapper(todos: dummyTodos, todoStatus: TodoStatus.pending),
  TodoWrapper(todos: dummyTodos, todoStatus: TodoStatus.failed),
];
