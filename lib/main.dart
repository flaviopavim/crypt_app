import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypt by WhiteHats"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 8, //or null
                    decoration: InputDecoration.collapsed(hintText: "Text"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 8, //or null
                    decoration: InputDecoration.collapsed(hintText: "Your message crypted"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Clipboard.setData(ClipboardData(text: "your text"));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.copy),
      ),
    );
  }
}
