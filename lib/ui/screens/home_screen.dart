import 'package:flutter/material.dart';
import 'package:flutter_offline/data/models/todos_wrapper.dart';
import 'package:flutter_offline/ui/screens/create_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sync),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (ctx, idx) {
            final todos = dummyTodoList[idx].todos;
            return ListTile(
              title: Text(todos.title),
              subtitle: Text(todos.description),
              trailing: Text(dummyTodoList[idx].todoStatus),
            );
          },
          separatorBuilder: (ctx, idx) => SizedBox(
                height: 10,
              ),
          itemCount: dummyTodoList.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toCreateScreen(context),
        tooltip: 'Create todo',
        child: Icon(Icons.add),
      ),
    );
    ;
  }

  void toCreateScreen(BuildContext ctx) {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => CreateScreen()));
  }
}
