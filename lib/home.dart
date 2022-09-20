import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
