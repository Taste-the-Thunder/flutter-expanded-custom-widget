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
            _customContainer(
                num: 8,
                color: Colors.red
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  _customContainer(
                      color: Colors.indigo,
                      num: 5
                  ),
                  _customContainer(
                      color: Colors.purple,
                      num: 3
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _customContainer({required int num,required Color color}){
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