import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  final List<Map<String, String>> initialTodos; // Accept initial todos

  TodoList({Key? key, required this.initialTodos}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late List<Map<String, String>> todos; // List to hold food items

  @override
  void initState() {
    super.initState();
    todos = widget.initialTodos; // Initialize with passed todos
  }

  void removeTodo(int index) {
    setState(() {
      todos.removeAt(index); // Remove item at index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(todos[index]['foodName']!), // Unique key for each item
            background: Container(color: Colors.red), // Background color for swipe
            onDismissed: (direction) {
              removeTodo(index); // Remove item on swipe
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Item dismissed')),
              );
            },
            child: ListTile(
              title: Text(todos[index]['foodName']!), // Display food name
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Country: ${todos[index]['country']!}'), // Display current country
                ],
              ),
              leading: Image.network(todos[index]['imageUrl']!), // Display food image
            ),
          );
        },
      ),
    );
  }
}
