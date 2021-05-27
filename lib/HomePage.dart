import 'package:flutter/material.dart';
import 'package:flutter_app/ListDataItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _listOf = [
    'Apple',
    'Orange',
    'Banana',
    'Mango',
    'Jack Fruits',
    'Guava',
    'PineApple',
    'Watermelon',
    'Grapes',
    'Dates',
    'Pears',
    'Cherry',
    'Strawberry',
    'Coconut',
    'Blackberry',
    'Grapefruit',
    'Plum',
    'Raspberry',
    'Pomegranate',
    'Fig',
    'Tangerine',
    'Papaya'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View Builder',
          style: TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            onPressed: () => debugPrint('Add'),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => debugPrint('Search'),
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        child: new ListView.builder(
          itemBuilder: (
            _,
            int index,
          ) => ListDataItem(this._listOf[index]),
          itemCount: this._listOf.length,
        ),
      ),
    );
  }
}
