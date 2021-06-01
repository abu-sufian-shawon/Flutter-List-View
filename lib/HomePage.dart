import 'package:flutter/material.dart';
import 'package:flutter_app/connectivity_provider.dart';
import 'package:flutter_app/no_internet.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ConnectivityProvider>(context, listen: false).startMonitoring();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Connectivity'),
        backgroundColor: Colors.redAccent,
      ),
      body: pageUI(),
    );
  }

  Widget pageUI() {
    return Consumer<ConnectivityProvider>(
      builder: (context, model, child) {
        if (model.isOnline != null) {
          return model.isOnline
              ? Center(
                  child: Text(
                    'Home Page',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : NoInternet();
        }
        return Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
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
      // body: Container(
      //   child: new ListView.builder(
      //     itemBuilder: (
      //       _,
      //       int index,
      //     ) => ListDataItem(this._listOf[index]),
      //     itemCount: this._listOf.length,
      //   ),
      // ),
    );
  }
}
