import 'package:flutter/material.dart';
import 'package:msibnf/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidgets(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidgets extends StatefulWidget {
  const MyWidgets({Key? key}) : super(key: key);

  @override
  State<MyWidgets> createState() => _MyWidgetsState();
}

class _MyWidgetsState extends State<MyWidgets> {
  double width = 100;
  double height = 100;
  Color color = Colors.green.shade400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          color: color,
          duration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            width = width == 100 ? 200 : 100;
            height = height == 100 ? 200 : 100;
            color = color == Colors.green.shade400
                ? Colors.green.shade100
                : Colors.green.shade400;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
