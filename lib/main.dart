import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            _customContainer(8, Colors.red),
            _customContainer(5, Colors.indigo),
          ],
        ),
      ),
    );
  }
}

Widget _customContainer(int num, Color color){
  return Expanded(
    flex: num,
    child: Container(
      width: double.infinity,
      color: color,
      child: Center(
        child: Text(
          '${num}',
          style: TextStyle(
              fontSize: 35,
              color: Colors.white
          ),
        ),
      ),
    ),
  );
}