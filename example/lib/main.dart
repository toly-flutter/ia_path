import 'package:flutter/material.dart';
import 'package:ia_path/ia_path.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'CacheDir:\n';

  @override
  void initState() {
    super.initState();

    IaPath().getTemporaryDirectory().then((dir){
      setState(() {
        _platformVersion+=dir.path;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Container(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
