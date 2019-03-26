import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Demo',
      home: TodoList(),
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.deepPurple,
      ),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  State<TodoList> createState() => TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> _todoItems = [];
  List<bool> _todoCheckedStates = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Demo'),
      ),
      body: _buildTodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodoScreen,
        tooltip: 'Add task',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTodoList() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index < _todoItems.length) {
        return _buildTodoItem(index);
      }
    });
  }

  Widget _buildTodoItem(int index) {
    return CheckboxListTile(
      title: Text(_todoItems[index]),
      value: _todoCheckedStates[index],
      onChanged: (bool value) {
        setState(() {
          _todoCheckedStates[index] = value;
        });
      },
    );
  }

  void _addTodoScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('New todo'),
          ),
          body: TextField(
            autofocus: true,
            onSubmitted: (text) {
              _addTodoItem(text);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              hintText: 'Enter a todo',
              contentPadding: EdgeInsets.all(16.0),
            ),
          ));
    }));
  }

  void _addTodoItem(String todo) {
    if (todo.length > 0)
      setState(() {
        _todoItems.add(todo);
        _todoCheckedStates.add(false);
      });
  }
}
