import 'package:flutter/material.dart';

import 'package:poketypes/poketypes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poketypes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Poketypes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: _buildPoketypes(context),
      ),
    );
  }

  Widget _buildPoketypes(BuildContext context) {
    final List<Poketype> types = Poketype.all;
    final List<String> texts = <String>[''];
    for (Poketype type in types) {
      texts.add(type.label['en']);
    }
    for (Poketype type in types) {
      texts.add(type.label['en']);
      for (double w in type.weakness.values) {
        switch (w.toString()) {
          case '0.0':
            texts.add('');
            break;
          case '0.5':
            texts.add('△');
            break;
          case '2.0':
            texts.add('◯');
            break;
          default:
            texts.add('');
        }
      }
    }
    final BoxDecoration decoration = BoxDecoration(
      border: Border.all(color: Colors.black),
    );
    return Container(
      decoration: decoration,
      child: GridView.count(
        crossAxisCount: types.length + 1,
        scrollDirection: Axis.horizontal,
        childAspectRatio: 0.4,
        children: texts.map((String text) {
          return Container(
            decoration: decoration,
            child: Center(
              child: Text(text),
            ),
          );
        }).toList(),
      ),
    );
  }
}
