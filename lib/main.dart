import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/connectivity_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  State createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>ConnectivityProvider(),
          child: HomePage(),)
        ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );

  }
}